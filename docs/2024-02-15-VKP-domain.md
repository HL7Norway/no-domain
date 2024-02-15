# Møtenotater

Eivind Holt, Øivind AAssve, Terje, Jon Didriksen og Thomas.  

## Recap

EPIC har jo sandbox og burde vite hvordan FHIR bør benyttes.
Patient og FHIR tillater ulik implementasjon.

NoBasis - er det så komplisert at bare sykehus er interressert.

* Bør være grunnleggende no-basis profiler

Leverandør av devicer som måler hjemme, hva trenger de å gjøre?

* Bør ikke være nødt til å gjøre noe.
* Bør ikke være nødt til å sende en annen bundle til Norge.

Hva er grunnent il å lage de norske variantene.

* verdien av profilene i Norge?
* To ting -  
  * Norske koder og kodeverk som benyttes i Norge
  * kontekstinformasjon som tjenesten trenger for å stole på målingen.

Hva ligger i profilen idag:

* Norsk identitet for practitioner og patient.
* Norsk koding av hvilken type måling det er snakk om.
* Forslag til kontekstinformasjon som er nyttig i denne konteksten.

Gjør det enkelt for leverandører.

* Verdikjedebetraktningen på informasjonen.
* Devicen skal ikke oppfylle kravene i forhold til deling mellom virksomheter.
* Mindre strenge krav lenger bak.
* Ved utveksling må man ha pasient og antakelig informasjon om hvor målingen kommer fra.

Klinikere i andre virksomheter skal kunne nyttiggjøre seg data. Hvilke metadata skal vi ha med for gjøre dette brukbart.

VKP baserer seg på no-basis.

* Mer detaljerte profiler enn det vi trenger?
* Terskelverdier er lagt til på VKP, eksempler på hvordan dette er spesifisert.
  * Terskelverdien følger observasjonen.

Videre arbeid:

* Se på mappingen mellom VKP og NoBasis.
* NoBasis for vital signs.
