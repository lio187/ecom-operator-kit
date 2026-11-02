# Graph Report - wiki  (2026-07-20)

## Corpus Check
- Corpus is ~3,057 words - fits in a single context window. You may not need a graph.

## Summary
- 28 nodes · 166 edges · 4 communities
- Extraction: 100% EXTRACTED · 0% INFERRED · 0% AMBIGUOUS
- Token cost: 16,000 input · 11,500 output

## Community Hubs (Navigation)
- Bestsellers & sfeer-producten
- Merk, beleid & positionering
- Cadeau & seizoen
- Duurzaamheid & inkoop

## God Nodes (most connected - your core abstractions)
1. `De Kaarsenhoek` - 27 edges
2. `Index — De Kaarsenhoek brein` - 27 edges
3. `Duurzaamheid` - 16 edges
4. `Segment — Sfeerzoekers` - 15 edges
5. `Log — wijzigingen` - 15 edges
6. `Seizoenspatroon` - 14 edges
7. `Cadeau-positionering` - 14 edges
8. `Collectie Signature` - 13 edges
9. `Bestseller-analyse` - 12 edges
10. `Prijsstrategie` - 12 edges

## Surprising Connections (you probably didn't know these)
- `Bestseller-analyse` --references--> `Verzendbeleid`  [EXTRACTED]
  analyses/bestseller-analyse.md → concepts/verzendbeleid.md
- `Bestseller-analyse` --references--> `De Kaarsenhoek`  [EXTRACTED]
  analyses/bestseller-analyse.md → entities/de-kaarsenhoek.md
- `Bestseller-analyse` --references--> `Lavendel & Salie`  [EXTRACTED]
  analyses/bestseller-analyse.md → entities/lavendel-en-salie.md
- `Index — De Kaarsenhoek brein` --references--> `Bestseller-analyse`  [EXTRACTED]
  index.md → analyses/bestseller-analyse.md
- `Concurrent-vergelijking` --references--> `Duurzaamheid`  [EXTRACTED]
  analyses/concurrent-vergelijking.md → concepts/duurzaamheid.md

## Hyperedges (group relationships)
- **Cadeau-engine: positionering + hero-set + timing** — concepts_cadeau_positionering, entities_cadeauset_warm_thuis, entities_amber_en_hout, analyses_seizoenspatroon [INFERRED 0.85]
- **Concurrentiepositie & differentiatie** — concepts_usps, concepts_duurzaamheid, concepts_merkstem, analyses_concurrent_vergelijking, concepts_prijsstrategie [INFERRED 0.85]
- **Assortiment: vaste kern + seizoenspieken** — entities_collectie_signature, entities_collectie_najaar, entities_amber_en_hout, analyses_bestseller_analyse, analyses_seizoenspatroon [INFERRED 0.85]
- **Concurrentiepositionering — De Kaarsenhoek tussen de twee polen** — entities_de_kaarsenhoek, entities_concurrent_rituals, entities_concurrent_lokale_makers, analyses_concurrent_vergelijking [INFERRED 0.75]
- **Duurzaamheidspijler — sojawas-inkoop onderbouwt USP's** — entities_leverancier_natuurwas, concepts_duurzaamheid, concepts_usps, entities_de_kaarsenhoek [INFERRED 0.75]

## Communities (4 total, 0 thin omitted)

### Community 0 - "Bestsellers & sfeer-producten"
Cohesion: 0.69
Nodes (10): Bestseller-analyse, Seizoenspatroon, Amber & Hout, Cadeauset Warm Thuis, Collectie Signature, Reed Diffuser Vijgenblad, Segment — Sfeerzoekers, Vijgenblad (+2 more)

### Community 1 - "Merk, beleid & positionering"
Cohesion: 0.67
Nodes (9): Concurrent-vergelijking, Merkstem, Prijsstrategie, Retourbeleid, USP's, Verzendbeleid, Concurrent — Lokale Etsy-makers, Concurrent — Rituals (+1 more)

### Community 2 - "Cadeau & seizoen"
Cohesion: 0.87
Nodes (6): Cadeau-positionering, Collectie Najaar, Kaneel & Kruidnagel, Rozen & Oud, Segment — Cadeaugevers, Index — De Kaarsenhoek brein

### Community 3 - "Duurzaamheid & inkoop"
Cohesion: 1.00
Nodes (3): Duurzaamheid, Lavendel & Salie, Leverancier — NatuurWas B.V.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `De Kaarsenhoek` connect `Merk, beleid & positionering` to `Bestsellers & sfeer-producten`, `Cadeau & seizoen`, `Duurzaamheid & inkoop`?**
  _High betweenness centrality (0.144) - this node is a cross-community bridge._
- **Why does `Index — De Kaarsenhoek brein` connect `Cadeau & seizoen` to `Bestsellers & sfeer-producten`, `Merk, beleid & positionering`, `Duurzaamheid & inkoop`?**
  _High betweenness centrality (0.144) - this node is a cross-community bridge._
- **Why does `Duurzaamheid` connect `Duurzaamheid & inkoop` to `Bestsellers & sfeer-producten`, `Merk, beleid & positionering`, `Cadeau & seizoen`?**
  _High betweenness centrality (0.040) - this node is a cross-community bridge._