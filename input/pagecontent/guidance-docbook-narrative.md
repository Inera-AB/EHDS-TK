# DocBook-mappning – clinicalDocumentNoteText

**Gäller:** GetCareDocumentation v3.0 (`careDocumentation.body.clinicalDocumentNoteText`)  
**FHIR-resurser:** [IneraEHDSDocumentReference](StructureDefinition-inera-ehds-document-reference.html) (obligatorisk), `Composition` (valfri)  
**Designbeslut:** DOC-004 i [Mappningsissues och Designbeslut](mapping-issues.html#designbeslut-fattade)  
**Mappningssida:** [GetCareDocumentation – Anteckningar](mapping-getcaredocumentation.html)

---

## Bakgrund

`clinicalDocumentNoteText` är av typen string. Fältet innehåller antingen fritext eller ett
DocBook-dokument. När DocBook används ska fältet innehålla XML. Eftersom XML:en ligger inuti
ett XML-element måste XML-tecknen entity-kodas:

```xml
<clinicalDocumentNoteText>
  &lt;?xml version="1.0" encoding="utf-8"?&gt;
  &lt;article&gt;
    &lt;section&gt;
      &lt;title&gt;Bedömning&lt;/title&gt;
      &lt;para&gt;Patienten mår bra.&lt;/para&gt;
    &lt;/section&gt;
  &lt;/article&gt;
</clinicalDocumentNoteText>
```

DocBook är ett källsystemsformat som FHIR-konsumenter inte kan förväntas rendera. DocBook förs
därför **inte** över som DocBook till FHIR-resursen. Innehållet transformeras i stället till
format som FHIR-konsumenter kan använda direkt:

| Strategi | Resultat | Krav |
|---|---|---|
| **A – XHTML** | `DocumentReference.content[0].attachment` med XHTML och `contentType: text/html; charset=utf-8` | Obligatorisk |
| **B – Composition** | En fristående `Composition` med en `section` per DocBook-`<section>` | Valfri |

---

## Översikt över flödet

```
RIVTA-svar (XML)
  └── clinicalDocumentNoteText (entity-kodad sträng)
        │  1. XML-parsning av RIVTA-svaret avkodar entiteterna
        ▼
      strängvärde
        │  2. Identifiering: DocBook eller fritext?
        ├── fritext ──► content.attachment (text/plain; charset=utf-8)
        └── DocBook
              ├── 3A. DocBook → XHTML ──► content.attachment (text/html; charset=utf-8)
              └── 3B. (valfri) DocBook → Composition.section[] ──► Composition
                                                                      ▲
                    Provenance.target ─► DocumentReference + Composition
```

---

## Steg 1 – Avkodning

Entity-kodningen tas bort av den vanliga XML-parsningen av RIVTA-svaret. Strängvärdet som
parsern ger är alltså DocBook-XML i klartext:

```xml
<?xml version="1.0" encoding="utf-8"?>
<article>
  <section>
    <title>Bedömning</title>
    <para>Patienten mår bra.</para>
  </section>
</article>
```

Ingen ytterligare avkodning ska göras. Att avkoda en gång till skulle förstöra innehåll där
källtexten själv innehåller `&amp;`, `&lt;` osv.

---

## Steg 2 – Identifiering av DocBook

RIVTA-fältet saknar en egen typindikator för fritext respektive DocBook. Följande regel används:

1. Ta bort inledande blanktecken från det avkodade strängvärdet.
2. Om värdet börjar med `<`, kan tolkas som välformad XML och har rotelementet `article`
   (eventuellt föregånget av en XML-deklaration) behandlas det som **DocBook**.
3. Annars behandlas värdet som **fritext**.

Om värdet ser ut som DocBook men inte kan tolkas, eller om transformationen misslyckas, faller
mappningen tillbaka på fritext (`text/plain`) med strängvärdet oförändrat, så att inget innehåll
tappas.

> **OBS:** Regeln är en heuristik som inte är fastställd i TKB:n. Den kan behöva justeras om
> källsystem visar sig skicka DocBook med en annan rot.

---

## Steg 3A – Strategi A: DocBook → XHTML (obligatorisk)

DocBook-dokumentet transformeras till ett XHTML-fragment med en rot-`<div>` i XHTML-namnrymden.
Transformationen behåller källans ordning och struktur. Resultatet base64-kodas och läggs i
`DocumentReference.content[0].attachment.data` med
`contentType: text/html; charset=utf-8`.

### Elementmappning

| DocBook | XHTML | Kommentar |
|---|---|---|
| `<article>` | `<div xmlns="http://www.w3.org/1999/xhtml">` | Rot |
| `<article><title>` | `<h1>` | Dokumentrubrik, om den finns |
| `<section>` | `<div>` | Nästlade sektioner nästlas |
| `<title>` i `<section>` | `<h2>`–`<h6>` | Nivå efter nästlingsdjup (sektion på nivå 1 → `<h2>`); djupare än `<h6>` blir `<h6>` |
| `<para>`, `<simpara>` | `<p>` | |
| `<emphasis>` | `<em>` | |
| `<emphasis role="bold">` / `role="strong"` | `<strong>` | |
| `<itemizedlist>` | `<ul>` | |
| `<orderedlist>` | `<ol>` | |
| `<listitem>` | `<li>` | |
| `<variablelist>` / `<varlistentry>` / `<term>` / `<listitem>` | `<dl>` / – / `<dt>` / `<dd>` | |
| `<ulink url="…">`, `<link xlink:href="…">` | `<a href="…">` | Endast `http`/`https`-länkar behålls som länkar; övriga blir text |
| `<informaltable>`, `<table>` | `<table>` | `<title>` i `<table>` → `<caption>` |
| `<thead>` / `<tbody>` / `<row>` | `<thead>` / `<tbody>` / `<tr>` | `<tgroup>` tas bort, innehållet behålls |
| `<entry>` | `<th>` i `<thead>`, annars `<td>` | |
| `<literallayout>`, `<programlisting>`, `<screen>` | `<pre>` | Radbrytningar bevaras |
| `<sbr/>` | `<br/>` | |
| Okända element | – | Elementet tas bort men textinnehållet behålls |

### Stylade sektioner (rutor)

En sektion vars `<title>` innehåller `<emphasis role="…">` med något av rollvärdena
`information`, `observe`, `frame` eller `collapsible` är en informationsruta, inte en
strukturell rubrik. Den renderas som en inbäddad ruta i föräldern:

| DocBook | XHTML |
|---|---|
| `<section><title><emphasis role="information">Rubrik</emphasis></title>…</section>` | `<div class="information"><p><strong>Rubrik</strong></p>…</div>` |

Motsvarande gäller rollerna `observe`, `frame` och `collapsible` (klassnamnet är rollvärdet).

### Säkerhet

XHTML:en ska följa FHIR:s regler för narrativ XHTML: inga `<script>`-, `<style>`-, `<form>`-
eller `<iframe>`-element, inga händelseattribut (`on*`) och inga `javascript:`-länkar. Allt
innehåll som inte täcks av elementmappningen ovan blir text.

### Placering

XHTML:en läggs i `content.attachment` och **inte** i resursens `DomainResource.text`.
`text` ska sammanfatta resursen, inte bära dokumentets faktiska innehåll.

---

## Steg 3B – Strategi B: Composition.section (valfri)

Utöver Strategi A kan en fristående `Composition` skapas när innehållet är DocBook. Den gör
dokumentets sektioner adresserbara var för sig, till exempel för navigering eller för att visa
enskilda avsnitt.

### Sektionsmappning

| DocBook | Composition.section |
|---|---|
| `<section><title>…</title>…</section>` | En `section` med `title` från `<title>`-texten |
| Nästlad `<section>` inom en `<section>` | Nästlad `section.section` (rekursivt) |
| Stylad sektion (`<emphasis role="information/observe/frame/collapsible">` i titeln) | Bryts **inte** ut – stannar som inbäddad ruta i förälderns `section.text` |
| Löst innehåll direkt under `<article>` (utanför alla `<section>`) | En avslutande namnlös `section` sist i listan |
| Inget `<section>`-element alls | En enda namnlös `section` med hela innehållet |

Varje `section.text` är en `Narrative` med `status = generated` och samma slags XHTML-`<div>`
som Strategi A ger, men begränsad till sektionens eget innehåll. Nästlade sektioner ligger i
`section.section` och upprepas inte i förälderns `text`.

### Övriga fält i Composition

| Composition-element | Värde |
|---|---|
| `status` | Alltid `final` |
| `type` | Kopieras från `DocumentReference.type` |
| `subject` | Kopieras från `DocumentReference.subject` |
| `date` | Kopieras från `DocumentReference.date` |
| `author` | Kopieras från `DocumentReference.author` |
| `title` | `clinicalDocumentNoteTitle`; fallback `"Journalanteckning"` |

### Koppling till DocumentReference

`Composition` saknar ett eget element som pekar på `DocumentReference`. Kopplingen görs genom
att samma `Provenance` har både `DocumentReference` och `Composition` i `Provenance.target`.
Den `Provenance` bär redan Sparr-agenterna (`agent[custodian]`, `agent[author]`), så samma
spärrkontroll gäller för båda resurserna. En konsument som hämtar `Provenance` för en
`DocumentReference` hittar den tillhörande `Composition` bland dess targets.

---

## Exempel

### Källa (efter avkodning)

```xml
<?xml version="1.0" encoding="utf-8"?>
<article>
  <section>
    <title>Bedömning</title>
    <para>Patienten mår bra.</para>
    <section>
      <title>Status</title>
      <itemizedlist>
        <listitem><para>Afebril</para></listitem>
        <listitem><para>Opåverkad</para></listitem>
      </itemizedlist>
    </section>
  </section>
  <section>
    <title><emphasis role="observe">Observera</emphasis></title>
    <para>Ny kontroll om två veckor.</para>
  </section>
</article>
```

### Strategi A – content.attachment

```json
"content": [{
  "attachment": {
    "contentType": "text/html; charset=utf-8",
    "title": "Besöksanteckning",
    "data": "<base64 av XHTML nedan>"
  }
}]
```

```html
<div xmlns="http://www.w3.org/1999/xhtml">
  <div>
    <h2>Bedömning</h2>
    <p>Patienten mår bra.</p>
    <div>
      <h3>Status</h3>
      <ul>
        <li><p>Afebril</p></li>
        <li><p>Opåverkad</p></li>
      </ul>
    </div>
  </div>
  <div class="observe">
    <p><strong>Observera</strong></p>
    <p>Ny kontroll om två veckor.</p>
  </div>
</div>
```

### Strategi B – Composition

```json
{
  "resourceType": "Composition",
  "status": "final",
  "type": { "coding": [{ "system": "urn:oid:1.2.752.129.2.2.2.11", "code": "bes" }] },
  "subject": { "identifier": { "system": "http://electronichealth.se/identifier/personnummer", "value": "191212121212" } },
  "date": "2023-06-01T12:00:00+02:00",
  "author": [{ "identifier": { "system": "urn:oid:1.2.752.129.2.1.4.1", "value": "SE2321000016-1234" } }],
  "title": "Besöksanteckning",
  "section": [
    {
      "title": "Bedömning",
      "text": { "status": "generated", "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Patienten mår bra.</p></div>" },
      "section": [{
        "title": "Status",
        "text": { "status": "generated", "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><p>Afebril</p></li><li><p>Opåverkad</p></li></ul></div>" }
      }]
    },
    {
      "text": { "status": "generated", "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div class=\"observe\"><p><strong>Observera</strong></p><p>Ny kontroll om två veckor.</p></div></div>" }
    }
  ]
}
```

Den stylade sektionen "Observera" bryts inte ut som egen rubrik. Den ligger direkt under
`<article>` och hamnar därför i den avslutande namnlösa sektionen.

---

## Kända begränsningar

- **Identifieringen är en heuristik.** RIVTA-fältet anger inte om innehållet är fritext eller
  DocBook. Se [Steg 2](#steg-2--identifiering-av-docbook).
- **Dokumentordning i Strategi B.** Löst innehåll direkt under `<article>` vid sidan av
  strukturella `<section>`-element samlas i en avslutande sektion i stället för att behålla
  sin ursprungliga position. Det är en medveten förenkling för att inget innehåll ska tappas.
  Strategi A bevarar alltid exakt källordning och är den representation som ska användas när
  exakt visuell återgivning krävs.
- **Ingen direkt länk Composition → DocumentReference.** Kopplingen går via `Provenance.target`.
- **Ingen egen Composition-profil.** Strategi B beskrivs här men har ännu ingen profil i IG:n.
