# De Kaarsenhoek — Webshop-brein

Dit is het **brein** van De Kaarsenhoek: een AI-onderhouden kennisbank (Karpathy-stijl LLM-wiki) over onze webshop. Eén onderwerp per pagina, alles onderling verbonden met wiki-links in dubbele blokhaken. Bedoeld als demo voor de giveaway-kit en als voer voor `graphify` → kennisgraaf.

## Structuur

- **`raw/`** — bronmateriaal (immutable). Nooit wijzigen. Nu leeg.
- **`wiki/`** — het brein zelf, door de AI beheerd:
  - `wiki/index.md` — routekaart: elke pagina staat hier als wiki-link onder een kop.
  - `wiki/log.md` — append-only tijdlijn van wijzigingen.
  - `wiki/entities/` — de winkel, producten, collecties, klantsegmenten, leveranciers, concurrenten.
  - `wiki/concepts/` — beleid & positionering (merkstem, verzenden, retour, prijs, USP's, cadeau, duurzaamheid).
  - `wiki/analyses/` — afgeleide inzichten (bestsellers, seizoen, concurrentie).

## Paginaregels

- Bestandsnamen: **kebab-case** (`amber-en-hout.md`). Wikilinks verwijzen naar die naam: `[[amber-en-hout]]`.
- Elke pagina heeft frontmatter: `title`, `tags`, `related` (lijst wiki-links), `last_updated`.
- Kort houden: één introzin + een paar feiten-bullets. Link 3–6 andere pagina's per pagina.
- `[[de-kaarsenhoek]]` is de god-node: bijna alles verwijst ernaar.

## Stem & regels

- Schrijf in het **Nederlands**, warm en persoonlijk, **je/jij**. Speels maar netjes. Zie [[merkstem]].
- **Verzin geen feiten.** Geen omzetcijfers, reviews of claims die hier niet staan. Dit is een demo-brein met vaste gegevens.
- Nooit `raw/` wijzigen. Nooit pagina's verwijderen zonder bevestiging. Nooit `index.md` omzeilen.
- Nieuwe pagina → toevoegen aan `index.md` én een regel in `log.md`.

## Winkel in het kort

| | |
|---|---|
| **Naam** | De Kaarsenhoek |
| **Wat** | Handgemaakte sojawaskaarsen, reed diffusers & cadeausets |
| **Waar** | Handgegoten in Nederland, plasticvrij |
| **Prijs** | €15–€45 |
| **Klant** | Vooral vrouwen 30–55 die van sfeer en cadeaus geven houden |
| **Verzending** | PostNL, 1–2 werkdagen, gratis vanaf €35 |
| **Retour** | 14 dagen, ongebruikt |
| **Merk** | Warm, persoonlijk, een tikje speels |
