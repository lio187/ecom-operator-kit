---
description: "Static ad ⚡ — genereer een echte advertentie-afbeelding voor je product met AI (Higgsfield · GPT Image 2). Power-up: Higgsfield nodig."
---

# /webshop:static-ad — Static Ad Maker (⚡ power-up)

Je maakt een echte, kant-en-klare **static ad afbeelding** voor de webshop van de gebruiker met het GPT Image 2-model via de Higgsfield MCP. Deze skill is een **power-up**: hij heeft de Higgsfield-connector + credits nodig. Werkt dat niet, dan lever je een perfecte prompt die ze zelf kunnen plakken (fallback hieronder).

## Wat je doet

1. **Lees eerst het brein** — de `CLAUDE.md` (en `wiki/entities/` + `wiki/concepts/` als die er zijn). Haal eruit: wat de shop verkoopt, de doelgroep, de merkstem én de merkkleuren. De ad moet daar 100% bij passen.

2. **Check of Higgsfield beschikbaar is.** Roep `mcp__higgsfield__balance` (of `show_plans_and_credits`) aan om te zien of er credits zijn.
   - **Geen Higgsfield / geen credits?** → sla het genereren over en ga naar **Fallback** onderaan. Vertel het eerlijk: "Higgsfield is niet gekoppeld of je hebt geen credits — hier is de kant-en-klare prompt die je zelf op higgsfield.ai of in ChatGPT (image) plakt."

3. **Vraag kort** waar de ad over gaat als het nog niet duidelijk is:
   > "Voor welk product of welke aanbieding? Geef de naam, 2-3 voordelen, en (optioneel) de deal/prijs. En welk formaat: vierkant (feed), staand (story/reel) of liggend?"

4. **Bouw de ad-prompt** volgens deze structuur (het recept van een sterke static ad):
   > *Vierkant [of gekozen formaat] social ad. [Merk]-palet: [kleuren uit het brein, bijv. cream #F6F6F5 achtergrond, coral #FF6301 accent, near-black tekst]. Grote vette kop: "[HEADLINE]" met het woord "[KERNWOORD]" in [accentkleur]. Kleine eyebrow "[EYEBROW]" erboven. Eén ondersteunende regel: "[SUB]". Een [proof: stat / checklist / van-voor] blok. Duidelijke knop "[CTA]". Clean, high-contrast, editorial ad-design, strakke typografie, geen rommel.*
   - Schrijf de letterlijke headline tussen aanhalingstekens in de prompt (GPT Image 2 is juist sterk in tekst-op-beeld).
   - Eén highlight-woord in accentkleur. Max 4 kleuren op het beeld.
   - Geen echte merklogo's/bekende personen (wordt geweigerd).

5. **Preflight de kosten** (optioneel maar netjes): `generate_image` met `params.get_cost: true` toont de credit-kosten zónder te genereren. Noem dat even.

6. **Genereer.** Roep `mcp__higgsfield__generate_image` aan met exact:
   ```
   params: {
     model: "gpt_image_2",
     prompt: "<de ad-prompt hierboven>",
     aspect_ratio: "1:1",     // of "4:5" staand / "9:16" story / "16:9" liggend
     resolution: "2k",
     quality: "high",
     count: 1
   }
   ```
   (`gpt_image_2` is de échte model-id — verzin geen `gpt-image-2-pro`.)

7. **Wacht op het resultaat**: poll `mcp__higgsfield__job_status` met `{ jobId: "<uit stap 6>", sync: true }` tot het klaar is (~10-20s). Haal de afbeeldings-URL uit het eindresultaat.

8. **Lever op**: toon/geef de afbeeldings-URL en vraag of ze iets willen aanpassen (andere headline, kleur, formaat) — pas dan de prompt aan en genereer opnieuw.

## Output formaat

🎨 **Je static ad is klaar!**

- **Beeld:** [afbeeldings-URL]
- **Formaat:** [1:1 / 4:5 / 9:16]
- **Angle:** [de gekozen hoek + headline]

*Iets aanpassen? Zeg bijv. "andere headline" of "maak 'm staand voor stories" en ik genereer opnieuw.*

## Fallback (geen Higgsfield / geen credits)

Geef dan dit, zodat ze het zelf kunnen plakken:

📋 **Kant-en-klare ad-prompt** (plak op higgsfield.ai of in ChatGPT → afbeelding):
> [de volledige ad-prompt uit stap 4]

En de losse copy los eronder (headline, eyebrow, sub, CTA) zodat ze 'm desnoods zelf in Canva zetten.

## Regels
- Altijd Nederlands in de communicatie; de ad-copy in de merkstem uit het brein
- Gebruik ALLEEN merkkleuren/claims uit het brein — verzin geen kortingen of beloftes
- Eén highlight-woord, max 4 kleuren, strak en clean — geen clutter
- Higgsfield = power-up: bij geen connector/credits nooit vastlopen, altijd de fallback geven
- Wees eerlijk over credits: elke generatie kost workspace-credits (ook met een web-abonnement)
