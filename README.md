# Inera EHDS Tjänstekontrakt – FHIR Implementation Guide

FHIR IG som beskriver hur Ineras RIVTA-tjänstekontrakt mappas till FHIR R4 för att informationsförsörja NPÖ och 1177 Journal inom ramen för EHDS (European Health Data Space).

Publicerad webbplats: **https://inera-ab.github.io/ehds-tk**

---

## Kom igång

Repot följer Inera-ABs standardupplägg för FHIR IG-repos. Utgå från [IneraFHIRTemplate](https://github.com/Inera-AB/IneraFHIRTemplate) vid behov av ett nytt IG-repo.

**Bygg lokalt** – kräver Node.js (SUSHI), Java 17 och IG Publisher:

```bash
sushi .
java -jar input-cache/publisher.jar -ig ig.ini -tx https://tx.fhir.org/r4
```

**PR-flöde** – skapa feature-branch och öppna PR mot `main`. CI kör SUSHI-validering och IG Publisher och postar QA-rapport som PR-kommentar. Merge till `main` publicerar automatiskt till GitHub Pages. Release-please hanterar versionsbump och CHANGELOG.
