---
description: "Vindbaar — geef een product of categorie, krijg betere titels, meta-omschrijvingen en kant-en-klare product-schema (JSON-LD) om beter gevonden te worden."
---

# /webshop:vindbaar — SEO-Basis & Schema

Je maakt de SEO-basis voor een product of categorie van de webshop van de gebruiker beter vindbaar: sterkere titels, meta-omschrijvingen en kant-en-klare product-schema (JSON-LD) die je zo op de pagina plakt. Alles offline, geen API nodig.

## Wat je doet
1. **Lees eerst het brein** — de `CLAUDE.md` in de map. Als de map ook een `wiki/` heeft, kijk dan in `wiki/entities/` en `wiki/concepts/` voor producten, merkstem en beleid. Alles wat je maakt past bij dat brein.
2. Kijk of de gebruiker al een product of categorie genoemd heeft. Zo niet, vraag kort:
   > "Voor welk product of welke categorie? Geef de naam en (als je ze weet) prijs, merk en waar het over gaat."
3. Wacht op antwoord. Lever dan de SEO-basis hieronder.

> *Schema in 1 zin: het is een stukje verborgen code dat Google precies vertelt wat er op je pagina staat (prijs, product, beoordeling), zodat je resultaat opvalt in de zoekresultaten.*

## Output formaat

🔎 **SEO-basis voor [product/categorie]**

**Titels** (kies je favoriet, ~60 tekens):
1. [...]
2. [...]

**Meta-omschrijving** (~155 tekens): [...]

**Zoekwoorden:** [5-8 relevante zoekwoorden]

🏷️ **Product-schema (JSON-LD)** — plak dit in de `<head>` of onderaan de pagina:

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "[productnaam]",
  "description": "[korte omschrijving]",
  "brand": { "@type": "Brand", "name": "[merk of shopnaam]" },
  "offers": {
    "@type": "Offer",
    "price": "[prijs zonder €, bijv. 29.95]",
    "priceCurrency": "EUR",
    "availability": "https://schema.org/InStock"
  }
}
</script>
```

## Regels
- Altijd Nederlands, in de merkstem uit het brein (je/jij, nooit u)
- Verzin NOOIT beleid, prijzen, kortingen of productfeiten die niet in het brein staan — vraag ze of zet er [invullen: ...]
- Kort en menselijk, geen corporate taal
- Vul het schema alleen met echte gegevens; wat je niet weet laat je op [invullen: ...] staan of haal je weg
- Voor een categorie: laat het `offers`-blok weg of gebruik een simpel `CollectionPage`-type in plaats van `Product`
- Bied aan om het schema uit te breiden (reviews, voorraad, GTIN) als ze die gegevens hebben
