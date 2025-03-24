# 2025-01-15 - Arbeidsmøte vitale parametere HL7 Norge

Gjennomgang av profilene i åpen arbeidsgruppe ca 21 personer.

Versjon til diskusjon:

* Versjon: 0.7.8 - ballotNormative-1
* Generated 2024-12-10

## Ubesvart og kommentarer

### Oppfølging mot internasjonalt og nasjonalt arbeid

* Viktig at vi får tatt uovernstemmelser med VKP profilene opp med VKP.
* Viktig at vi får tatt uoversensstemmelser med internasjonal IHTSDO mapping med det internasjonale miljøet.
* Viktig at vi får spilt dette arbeidet inn i EU arbeidet.

### Notater og diskusjoner

* Dobbeltsjekke verdisett i alle ekstensjoner mot arketypene.  
* Identfisert mangler koder for sittende og stående BodyPosition.  
* Også feil i blood pressure measuring method.  
  * OK: BlodtrykkBodyPositionValueSet mangler to koder
  * TODO: BloodPressureMeasurementMethod mangler to koder
* Endre SCT-kode (observation.code) for BodyHeight til underliggende barn - [begrep 1153637007](https://browser.ihtsdotools.org/?perspective=full&conceptId1=1153637007&edition=MAIN/SNOMEDCT-NO&release=&languages=no,en).  
  * OK: Endre SNOMED begrep som benyttes i profilen. @lnystad
  * OK: Endre tabellen på forsiden. @thomiz
* Mer utfyllende beskrivelse på bruk av slice på performer. Dataansvar eller opprinnelse, hvordan angir vi det.  
  * bruk av author og Organization for å dokumentere dataansvar. Viktig for eksempel for DHO hvor det er pasient ikke er del av ansvarlig organisasjon (dataansvarlig).  
  * OK: skrive noe guideance om ansvarlig virksomhet
* Endre Base-profil til Domain-profile på overordnet beskrivelse av profilene.
  * OK: endre fra "base" til "domain"  
* I beskrivelse – dokumentere at man skal benytte puls som hovedregel.  
  * heart-rate er kun aktuelt i spesielle tilfeller. (vi holder nyanser mtp pulsklokker med EKG etc utenfor inntil videre 😊).  
  * OK: oppdatere guideance (og kanskje noe i heartrate profil)
* Skrive eksplisitt at ytterligere informasjon om hva som er inkludert og ekskludert i konseptene / ekstensjonene er dokumentert i sin helhet i arketypene (med link til CKM).  
  * Forklarende tekster fra arketypen er ikke med i resp rate, kan være et problem.
  * OK: Mer informasjon her i overskriften.
* Spontanous breathing – fjerne VS som suffiks i navn på verdisett.  
  * OK: Ta bort VS @lnystad  
* Bruk engelsk i NoDomainVitalSignsObservationProsentO2.  
  * (Inne i InspiredOxygen utvidelsen)  
  * OK: Bruk engelsk i navnet. @lnystad  
* Eksemplene inneholder mange feil, hovedsaklig språk (validator krever engelsk)
  * TODO: Validerbare eksempler @lnystad sjekker

### 2025-02-10 DIPS endringer

* Bloodpressure profil value sett for metode. Sende mail til Silje og Marte om hva som er kodene for automatisk invasiv og ikke invasiv.
* Endre tilbake til å ha "valueset" postfix i filnavnet
* Diverse andre endringer som avtalt blir sjekket inn på GitHub av Lars Andreas etter møtet.
* Thomas spør om manglende koder, spurt men ikke avklart.

#### Diskusjon om manglende koder

> 2025-02-24
> Da vi jobbet med disse settene for lenge siden tror jeg vi snakket om at verdisettene burde være enten (finding), (procedure) eller (qualifier value)?
> Jeg lurer på om det vi ser etter er barn av en av disse:
>
> 122869004 |Measurement procedure (procedure)|
> 129266000 |Measurement - action (qualifier value)|
>
> Sannsynligvis finnes ikke kodene vi trenger.
>
>> Godt poeng, kanskje noe sånn, men automatisk er ikke med her?
>> SNOMED CT - Non-invasive study of peripheral vessel (procedure)
>>
>> Tror ikke det eksisterer for alle de ulike målingene. Alternativet er vel et sett med qualifyer value's?
>> SNOMED CT - Non-invasive (qualifier value)
>>
>> Men jeg tror ikke slike kvalifikatorverdier bør ligge som selvstendige begreper i et verdisett for målemetode, semantisk sett…
>>
> 2024-03-21
>
> Vi har nå to valg slik jeg ser det.
>
> 1. Publisere profilene uten verdiene som mangler, anmerke dette i profil/verdisett, uansett må vi jobbe med alternativ 2.
> 2. Få opprettet dekkende SNOMED CT begreper eller benytte ECL uttrykk for å uttrykke disse verdiene.
>
> Foreløpig stemmer jeg på 1. Blir det problemer kommer kanskje også motivasjonen til å finne/opprette riktige verdier til verdisettet.

### 2025-03-21 - TSK

Vi lager profiler for no-domain, men ikke basis på nåværende tidspunkt.

* **TODO**: Beskriv hva SNOMED CT kodene betyr og når de skal benyttes.  
* **BLOKKERT**: Kjør uten de siste to manglende kodene for BloodPressureMeasurementMethod  
* Argumentet for ikke å lage SNOMED mapping er at det ikke er enighet om hvilke SNOMED koder som bør benyttes for disse målingene på tvers av anvendelser i Norge.  
* Kodene som er angitt i no-domain er kvalitetssikret i forhold til Arketypene i EpenEHR.  
* **TODO**: Ta bort DIPS pdf dokumentasjonen.
  * **Fjernet** pdf og html for DIPS admin.
