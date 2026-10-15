# Generering av logiska modeller för RIV-TA-svar

Skripten genererar de logiska modellerna i `input/fsh/logicalmodels/` från RIV-TA-domänernas XSD:er och verifierar kardinaliteterna mot TKB:erna. Modellerna avbildar svarsmeddelandena exakt (namn, nästling, ordning, XML-namnrymder, RIV-TA-datatyper och textinnehåll), så att en FML-motor kan läsa RIV-TA-XML direkt. Se IG-sidan [Logiska modeller](../../input/pagecontent/logical-models.md).

## Förutsättningar

Python 3.10 eller senare, utan externa paket. Klona domänerna från Bitbucket till en gemensam katalog:

```sh
mkdir -p ../rivta-domains && cd ../rivta-domains
for r in riv.clinicalprocess.healthcond.description riv.clinicalprocess.healthcond.actoutcome \
         riv.clinicalprocess.logistics.logistics riv.clinicalprocess.activityprescription.actoutcome \
         riv.clinicalprocess.healthcond.basic riv.crm.requeststatus riv.informationsecurity.auditing.log; do
  git clone --depth 1 https://bitbucket.org/rivta-domains/$r.git
done
```

Äldre versioner som fortfarande används klonas från sin tagg till `<repo>@<tagg>` i samma katalog (taggarna står i `cfg.py`):

```sh
for p in riv.clinicalprocess.healthcond.description@2.1.19 riv.clinicalprocess.healthcond.actoutcome@3.1.10 \
         riv.clinicalprocess.healthcond.actoutcome@4.1.3 riv.clinicalprocess.logistics.logistics@2.0.7 \
         riv.clinicalprocess.activityprescription.actoutcome@1.0.2 riv.crm.requeststatus@1.0.7 \
         riv.clinicalprocess.healthcond.basic@1.2.3 riv.ehr.log@1.2.4; do
  git clone --depth 1 --branch ${p#*@} https://bitbucket.org/rivta-domains/${p%@*}.git $p
done
```

För GetObservations 1.2 används [tkb-converter](https://github.com/oskthu2/tkb-converter) som reservkälla för TKB-texter och -kardinaliteter, eftersom TKB:n där använder andra elementnamn än XSD:n. Klona den och ange `--tkbconv` när modellen genereras första gången. Därefter ger omkörningar samma resultat med eller utan `--tkbconv`, eftersom texterna då finns i modellen.

## Generera

Från repots rot:

```sh
python3 tools/rivta-lm/run_gen.py --domains ../rivta-domains
```

Med `--tkbconv ../tkb-converter` används tkb-converter som reservkälla. Modeller för mindre versioner (`diffonly` i `cfg.py`) skrivs till `--diffdir` (standard `/tmp/rivta-lm-diff`) och används bara för jämförelsen nedan.

Befintliga modeller läses först och deras kortbeskrivningar, definitioner, bindningar och invarianter behålls per sökväg; nya element får TKB:ns beskrivning. En omkörning på oförändrade underlag ger identiska filer. Sätt `RIVTA_LM_REPORT=rapport.json` för en rapport över kardinalitetsbeslut.

Kardinalitet: XSD:ns värde, skärpt av TKB:n där den är strängare (inklusive N/A = 0..0). En strängare kardinalitet i den befintliga modellen behålls även om TKB:n inte bekräftar den och noteras då i definitionen. TKB-värden som är lösare än XSD:n används inte.

## Kontrollera

Bygg modellerna med SUSHI och läs sedan ett exempelsvar per kontrakt enligt reglerna i HL7:s `XmlParser` (rot via `xml-name` och namnrymd, elementens namnrymd, textinnehåll via `xmlText`):

```sh
python3 tools/rivta-lm/xmlsim.py --domains ../rivta-domains --sd fsh-generated/resources
```

## Jämföra versioner

Tabellerna med skillnader mellan en äldre version och senaste versionen på mappningssidorna genereras mellan markörerna `<!-- versionsdiff:MODELL:start -->` och `<!-- versionsdiff:MODELL:end -->`:

```sh
python3 tools/rivta-lm/difftool.py --domains ../rivta-domains           # uppdatera sidorna
python3 tools/rivta-lm/difftool.py --domains ../rivta-domains --print   # skriv bara ut
```

`renames` i `cfg.py` anger vilket element i senaste versionen som motsvarar ett element i den äldre, när namn eller plats har ändrats.

## Filer

| Fil | Innehåll |
|---|---|
| `cfg.py` | Vilka kontrakt och versioner, XSD:er, svarselement och TKB:er som ingår |
| `rivxsd.py` | Läser en responder-XSD med importer till ett träd med namnrymd, typ och kardinalitet |
| `docxtables.py`, `tkb.py` | Läser TKB:ns tabeller "Fältregler" (`../`-, XPath- och typtabeller) |
| `oldfsh.py` | Läser befintliga FSH-modeller |
| `gen.py`, `run_gen.py` | Slår ihop och skriver modellerna samt `SEEHDSRivDatatypes.fsh` |
| `xmlsim.py` | Läskontroll av exempelsvar mot byggda StructureDefinitions |
| `difftool.py` | Skillnader mellan en äldre versions modell och senaste versionens, till mappningssidorna |
