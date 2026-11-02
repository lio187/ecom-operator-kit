# Van REA naar een complete Shopify Liquid-store

Met deze promptset analyseer je een sterke referentiestore en bouw je daarna je eigen volledige Shopify Online Store 2.0-theme in één run. Je gebruikt de werking en structuur als onderzoek. Je kopieert geen merkassets, teksten, foto's of code.

## Benodigd

- De twaalf bestanden uit je Cloud Project.
- De URL van een referentiestore.
- Je eigen productdata en toegestane assets.
- Een lokale theme-map of een ongepubliceerd Shopify-theme.
- De geïnstalleerde Reverse Engineer Anything-skill.

## Prompt 1 — Analyseer de volledige referentiestore met REA

```text
Gebruik Reverse Engineer Anything om deze store volledig te onderzoeken: [URL].

Onderzoek:
- homepage, collectie, productpagina, cart en servicepagina's;
- navigatie, informatievolgorde en belangrijkste kooproute;
- sections, componenten, interacties en mobiele werking;
- aanbod, bewijs, bezwaren, necessary beliefs en CRO-patronen;
- typografie, spacing, kleurrollen en beeldverhoudingen;
- product-, variant-, cart- en lokalisatielogica;
- loading, leeg, fout, unavailable en sold-out states.

Maak een map `research/rea/` met screenshots, observaties en een volledige functionele specificatie. Benoem wat een algemeen patroon is en wat uniek bij het bronmerk hoort. Kopieer geen code, tekst, beelden, logo's of onderscheidende merkstijl.
```

## Prompt 2 — Vertaal research naar onze eigen store

```text
Lees `research/rea/` en alle twaalf bestanden uit ons Cloud Project.

Maak één complete buildbrief voor onze eigen store. Gebruik de beste functionele patronen uit de REA-analyse, maar vertaal alles naar ons aanbod, onze klant, BRAND.md en DESIGN.md.

Leg vast:
- alle pagina's en templates;
- de sectievolgorde per pagina;
- de necessary belief per sectie;
- alle herbruikbare sections, blocks en snippets;
- alle Shopify-objecten, metafields en theme settings;
- responsive gedrag;
- toegankelijkheid en performance;
- variant-, cart-, menu-, zoek- en lokalisatiestates;
- welke eigen copy en assets waar komen.

Schrijf dit naar `docs/COMPLETE-SHOPIFY-BUILD-BRIEF.md`. Sluit af met een concrete bestandenlijst voor het volledige theme.
```

## Prompt 3 — Bouw het hele Shopify-theme in één run

```text
Lees eerst:
- alle twaalf Cloud Project-bestanden;
- `research/rea/`;
- `docs/COMPLETE-SHOPIFY-BUILD-BRIEF.md`;
- de bestaande code en projectinstructies.

Bouw nu de volledige eigen Shopify Online Store 2.0-store onder `shopify/theme/` in één run. Stop niet na een hero, sectie of verticale slice.

Bouw minimaal:
- `layout/theme.liquid`;
- JSON-templates voor homepage, product, collectie, cart, page, contact en search;
- alle benodigde sections, blocks en snippets;
- header, menu, announcement bar en footer;
- productmedia, varianten, prijs, voorraad en add-to-cart;
- cart drawer of cart page met native Shopify-cartlogica;
- collectiegrid, filters of sortering wanneer passend;
- zoek-, leeg-, fout-, sold-out- en unavailable-states;
- theme editor settings en presets;
- locale strings;
- responsive styling en toegankelijke bediening.

Regels:
- gebruik native Liquid en Shopify-objecten;
- hardcode geen product, prijs, valuta, voorraad of klantdata;
- gebruik alleen onze eigen toegestane assets en copy;
- bouw geen eigen checkout;
- zet geen secrets in bestanden;
- publiceer het theme niet;
- laat geen TODO-placeholder staan wanneer de benodigde projectinformatie aanwezig is.

Voer beschikbare theme-checks uit. Start een lokale of ongepubliceerde preview wanneer de omgeving dat toelaat. Los fouten op en lever daarna een kort rapport met gebouwde pagina's, checks en punten die alleen in een echte development store getest kunnen worden.
```

## Prompt 4 — Controleer de hele store

```text
Review de complete store als klant en als merchant.

Test:
- mobiel, tablet en desktop;
- menu, zoekfunctie en alle hoofdlinks;
- productmedia, varianten, prijs en beschikbaarheid;
- add-to-cart, cart aanpassen en foutafhandeling;
- collectie-, product-, cart- en servicepagina's;
- headings, labels, toetsenbord en zichtbare focus;
- theme editor settings en presets;
- locale strings, afbeeldingen en layout shifts;
- Liquid-, console-, netwerk- en theme-checkfouten.

Herstel gevonden problemen in dezelfde run. Schrijf de werkelijke uitkomsten naar `docs/SHOPIFY-QA.md`. Publiceer niets.
```

## Resultaat

Na deze vier prompts heb je REA-research, een complete buildbrief, het volledige Liquid-theme en een QA-rapport. Koppel het theme pas daarna aan een development store voor echte product-, markt- en checkouttests.
