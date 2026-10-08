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

## Generera

Från repots rot:

```sh
python3 tools/rivta-lm/run_gen.py --domains ../rivta-domains
```

Befintliga modeller läses först och deras kortbeskrivningar, definitioner, bindningar och invarianter behålls per sökväg; nya element får TKB:ns beskrivning. En omkörning på oförändrade underlag ger identiska filer. Sätt `RIVTA_LM_REPORT=rapport.json` för en rapport över kardinalitetsbeslut.

Kardinalitet: XSD:ns värde, skärpt av TKB:n där den är strängare (inklusive N/A = 0..0). En strängare kardinalitet i den befintliga modellen behålls även om TKB:n inte bekräftar den och noteras då i definitionen. TKB-värden som är lösare än XSD:n används inte.

## Kontrollera

Bygg modellerna med SUSHI och läs sedan ett exempelsvar per kontrakt enligt reglerna i HL7:s `XmlParser` (rot via `xml-name` och namnrymd, elementens namnrymd, textinnehåll via `xmlText`):

```sh
python3 tools/rivta-lm/xmlsim.py --domains ../rivta-domains --sd fsh-generated/resources
```

## Filer

| Fil | Innehåll |
|---|---|
| `cfg.py` | Vilka kontrakt, XSD:er, svarselement och TKB:er som ingår |
| `rivxsd.py` | Läser en responder-XSD med importer till ett träd med namnrymd, typ och kardinalitet |
| `docxtables.py`, `tkb.py` | Läser TKB:ns tabeller "Fältregler" (`../`-, XPath- och typtabeller) |
| `oldfsh.py` | Läser befintliga FSH-modeller |
| `gen.py`, `run_gen.py` | Slår ihop och skriver modellerna samt `SEEHDSRivDatatypes.fsh` |
| `xmlsim.py` | Läskontroll av exempelsvar mot byggda StructureDefinitions |
