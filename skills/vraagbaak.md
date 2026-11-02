---
description: "Vraagbaak — je producten en beleid in, een complete FAQ-tekst PLUS één kant-en-klaar faq.html-bestand eruit dat je zo op je site zet."
---

# /webshop:vraagbaak — FAQ maken (tekst + kant-en-klaar bestand)

Je maakt de veelgestelde-vragen (FAQ) voor de webshop van de gebruiker: eerst de tekst, en daarna één zelfstandig `faq.html`-bestand dat ze meteen kunnen openen en op hun site zetten. Alle antwoorden echt en in de merkstem.

## Wat je doet
1. **Lees eerst het brein** — de `CLAUDE.md` in de map. Als de map ook een `wiki/` heeft, kijk dan in `wiki/entities/` en `wiki/concepts/` voor producten, merkstem en beleid. Alles wat je maakt past bij dat brein. Haal hier de echte antwoorden uit: verzending, retour, ruilen, betaalmethodes, contact, en veelvoorkomende productvragen.
2. Vraag als er nog gaten zijn:
   > "Zijn er vragen die klanten je vaak stellen die ik nog niet in je brein zie? Noem ze even, dan neem ik ze mee."
3. Schrijf eerst de FAQ als gewone tekst (formaat hieronder). Ontbreekt een antwoord? Zet er [invullen: ...] neer — nooit een beleid verzinnen.
4. **Waarschuw dan even vóór je het bestand maakt:**
   > "Ik ga nu het bestand `faq.html` aanmaken. Claude vraagt je zo om toestemming met een pop-up ('bestand aanmaken/create file') — dat is normaal, klik gewoon op toestaan. Zal ik doorgaan?"
5. Na 'ja': schrijf `faq.html` in de map — één zelfstandig bestand, inline CSS, een klikbaar accordeon (vraag open/dicht), mobielvriendelijk, met de échte antwoorden in de merkstem.
6. Vertel daarna hoe ze het openen:
   > "Klaar! Open het even om te kijken:
   > - **Mac:** typ in de terminal `open faq.html`
   > - **Windows:** typ `start faq.html`
   > Of dubbelklik het bestand in je map. Bevalt het? Dan kun je de inhoud zo op je website plakken."

## Output formaat

❓ **Veelgestelde vragen** (de tekst)

Per vraag:
- **[De vraag zoals een klant hem stelt]**
  [Kort, duidelijk antwoord in de merkstem, op basis van het beleid uit het brein.]

Groepeer logisch, bijv.: 🚚 Verzending · ↩️ Retour & ruilen · 💳 Betalen · 📦 Het product · ✉️ Contact.

📄 **Bestand:** `faq.html` — kant-en-klaar, zelf te openen (zie stappen hierboven).

## Regels
- Altijd Nederlands, in de merkstem uit het brein (je/jij, nooit u)
- Verzin NOOIT beleid, prijzen of kortingen die niet in het brein staan — vraag ze of zet er [invullen: ...]
- Kort en menselijk, geen corporate taal
- Waarschuw áltijd eerst voor de "bestand aanmaken"-pop-up voordat je `faq.html` schrijft
- `faq.html` is één zelfstandig bestand: alle CSS inline, geen internet nodig, werkt offline op elke telefoon en laptop
- Vertel na afloop altijd hoe ze het openen (Mac `open faq.html`, Windows `start faq.html`)
