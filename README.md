# The AI Operator E-com Operator Kit

De complete deelnemerskit van de **The AI Operator E-com Masterclass**, gemaakt door **Leon Ghatas × 187N**.

Je gebruikt deze kit om van een leeg AI-project naar een werkend e-comsysteem te gaan: markt kiezen, klant begrijpen, een merk bouwen, een store reverse-engineeren, creatives maken en de volledige store omzetten naar Shopify Liquid.

## Dit zit erin

- [Deep Research SOP](DEEP-RESEARCH-SOP.md) voor product, markt, klant, probleem en aanbod.
- [Cloud Project-instructie](CLAUDE-PROJECT-INSTRUCTION.md) voor Claude Projects of ChatGPT Projects.
- [17 e-comagents](agents/README.md) voor research, merk, store, creatives, CRO en operations.
- [100 playbooks van Leon en 187N](playbooks/100-187n-ecom-playbooks.md).
- 16 Claude Code-skills in [`skills/`](skills/).
- Een lokaal Second Brain-voorbeeld in [`demo-brein/`](demo-brein/).
- [REA naar Shopify Liquid](REA-NAAR-SHOPIFY-LIQUID-PROMPTS.md): analyseer een store en bouw daarna het complete Shopify Online Store 2.0-theme in één run.
- [Gecureerde publieke resources](resources/PUBLIC-RESOURCES.md).

## De route

1. Start met de Deep Research SOP.
2. Vul je Cloud Project met de twaalf vaste bestanden.
3. Maak van die kennis een lokaal Second Brain.
4. Kies een sterke referentiestore en analyseer die met REA.
5. Bouw je eigen merk, aanbod, store en creatives met de agents.
6. Laat je coding agent het volledige Shopify Liquid-theme in één run bouwen.
7. Test ads, CRO en nieuwe creatives met dezelfde kennislaag.

## De twaalf bestanden in je Cloud Project

| Bestand | Wat staat erin? |
|---|---|
| `01-DEEP-RESEARCH.md` | Bewijs over markt, klant, concurrenten en vraag. |
| `02-PRODUCT-MARKET-SHORTLIST.md` | De beste product-marktcombinaties met redenen. |
| `03-OFFER-BRIEF.md` | Product, prijs, belofte, bewijs, bonus en garantie. |
| `04-NECESSARY-BELIEFS.md` | Wat een klant moet geloven voordat die koopt. |
| `05-AVATAR-SHEETS.md` | Taal, verlangens, bezwaren en situaties per klanttype. |
| `06-BRAND.md` | Positionering, merkstem, verhaal en merkregels. |
| `07-DESIGN.md` | Kleuren, typografie, beeldstijl, UI en creative-regels. |
| `08-PROJECT-KNOWLEDGE.md` | De korte waarheid waar alle agents vanuit werken. |
| `09-BRANDBOOK.md` | De samengevoegde merkhandleiding. |
| `10-MOODBOARD.md` | Visuele richting en referenties. |
| `11-CREATIVE-ROADMAP.md` | Hooks, angles, formats en productieplanning. |
| `12-TEST-PLAN.md` | Wat je test, waarom en hoe je beslist. |

## Installeren

Bekijk de bestanden eerst en installeer daarna lokaal:

```bash
git clone https://github.com/lio187/ecom-operator-kit.git
cd ecom-operator-kit
bash install.sh
```

Windows PowerShell:

```powershell
git clone https://github.com/lio187/ecom-operator-kit.git
cd ecom-operator-kit
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

De installer kopieert de skills en agents naar Claude Code. Voor een Cloud Project upload je de gewenste Markdown-bestanden handmatig. Zo bepaal je zelf welke kennis in ieder project komt.

## Creative stack

- **ChatGPT Image 2.5** voor productfoto's en statische creatives.
- **Higgsfield Genjitsu** voor motion edits.
- **Seedance 2.0 of 2.5** voor video.
- De agents in deze repo voor research, hooks, scripts, briefs en analyse.

## Gebruik

Deze repo is openbaar zodat deelnemers alles direct kunnen downloaden. De inhoud is geen belofte van omzet of ROAS. Resultaten hangen af van product, markt, uitvoering, budget en testkwaliteit. Lees [LICENSE.md](LICENSE.md) voordat je materiaal doorverkoopt of opnieuw publiceert.

Meer over The AI Operator: [theaioperator.nl](https://theaioperator.nl/nl)
