# 2023-08-31 Arbeidsmøte 

## Tema: Refset for vitale parametere, prinsipielle spørsmål

## Tilstede

Øyvind, Terje, Thomas, Karol, Lars Andreas, Mark, Ulrich, Eirik og Marte

## Agenda

Foreløpig agenda

1.	Gjennomgang av de 3-4 prinsipielle spørsmålene (Karol)
2.	Diskusjon av hvert enkelt spørsmål
3.	Oppsummering/konklusjoner
4.	Eventuelt

## Prinsipielle spørsmål til diskusjon

* Granularitet av refset - hvordan bør disse struktureres og hvordan brukes de i forbindelse med FHIR implementasjoner
* Dokumentasjon - av terminologibinding i IG - som en del av vitale parametere eller som egen IG for terminologi?
* Hvordan avklarer vi faglige spørsmål ved mapping mellom ulike modeller?
* Metode for områdeprofiler - mangler prinsipper og beskrivelse av terminologibinding forslag til oppdatering av metoden.

## Notater

### Granularitet av refset - hvordan bør disse struktureres og hvordan brukes de i forbindelse med FHIR implementasjoner

* Hvordan treffer oppbyggingen av refsettene på Snostorm FHIR spekk og FHIR implementasjon?
* Hvordan får man tak i bestandige URL'er for å henvise til refset eller deler av refset.

* Mulighet, man kan få et utsnitt av et større refset ved hjelp av en ecl:
    * Eksempel: url=http://snomed.info/sct/51000202101?fhir_vs=ecl/%5E198541000202101%7B%7BM%20mapTarget="Puls::Målested"%7D%7D
* Refset benyttes for å gjøre det enklere for implementasjon og bruk av refsettene.
* Behov i forhold til bruk med vitale-parametere profiler og implementasjon.

* Forvaltning av verdisettene er en egen diskusjon.
* Hvordan skal verdisettene være tilgjengellig for binding til profil og bruk i implementasjon (URL).
* Faglig forvaltning av verdisett i Norge er ikke avklart.

* De som bruker refset kan forvalte selv og få beskjed når ting utvikler seg.
  * Tooling fra Bouvet.
  * 10 eller 1 refset? Hva er mest nyttig?

* Implementatør er interessert i valueset og validering av value-settene, mot value-settene

* Hvordan blir valuesettene til og hvordan forvaltes disse?
  * Hvem er involvert
  * Hva er prosessen for beslutning
  * Hvem implementerer endringene
  * Hvordan blir endringene innført

## Oppsummering

* Første omgang design time mot serveren (SNOSTORM)
  * Andre omgang run-time, kan kjøre distribuerte modeller slik at de som trenger run-time mot egen server
* I første omgang er det Snostorm og SNOMED, men behovet er større visst vi ser på det generelt (for eksempel Volvenkodeverk)
* Det er behov for run-time på sikt - men det kan gjøres på flere måter
* Vi vil gjerne ha denne url'en som vi ønsker å benytte i IG for binding mot verdiset: https://termserver.no/fhir/ValueSet/8802/
* ca 15 verdisett uttrykt i Excelregnearket fra Terje. 
  * Dette er en omskrivning av verdisettene som LAN har sendt ut.

## Forarbeid til neste møte

* Lars Andreas sender beskjed om hvilke valueset vi trenger til FHIR implementation guide
* Karol og co ser hvordan disse kan leveres fra Snostorm.
