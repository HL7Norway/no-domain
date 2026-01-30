# no-domain

National domain profiles for the Norwegian realm (Nasjonale områdeprofiler) - FHIR R4  
[Prinsipper for nasjonale områdeprofiler](https://hl7norway.github.io/best-practice/docs/no-domain-metode/no-national-profiles-principles.html)  

## QA VitalSigns

Det ligger nå to versjoner av IG ute på github.io.

* Versjonen som var til høring 0.9.0 ligger som [CurrentBuild](https://hl7norway.github.io/no-domain/VitalSigns/CurrentBuild/)
* Versjonen som er til QA, 0.9.7x ligger som [TestBuild](https://hl7norway.github.io/no-domain/VitalSigns/TestBuild/)

Det er TestBuild som har implementert [endringer etter høringen](https://github.com/HL7Norway/no-domain/issues?q=is%3Aissue%20state%3Aopen%20label%3AQA-ready).

## Dokumentasjon

Utviklingen av no-domain (nasjonale områdeprofiler) følger [Metode for utvikling av områdeprofiler](https://hl7norway.github.io/best-practice/docs/no-domain-metode/innledning.html) ([Kildekode](https://github.com/HL7Norway/best-practice/tree/master/docs/no-domain-metode))  

Vi prøver også ut en praktisk tilnærming til å utvikle områdeprofiler [med en smidig metodikk](https://github.com/HL7Norway/no-domain/blob/master/docs/smidig-prosjekt.md)

## Plan

### Utvikle områdeprofiler

* Utvikle [VitalSigns områdeprofiler](https://github.com/HL7Norway/no-domain/tree/master/VitalSigns) basert på [hnfresk/hnvitalsigns profiler](https://github.com/hn-fresk/hnvitalsigns/tree/master)
* Legemidler, "enkel" -- eksempelvis for PLL, eResept, Kjernejournal/IPS etc. 
* Legemidler, "avansert" -- eksempelvis for avansert dosering, EPJ/kurvesystem-integrasjon

### Annet

- Lage kortliste over behov
- Lage oversikt over relevante internasjonale implementasjonsguider som grunnlag for nasjonale områdeprofiler (implementasjonsguider)
