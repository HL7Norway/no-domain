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
* Endre SCT-kode (observation.code) for BodyWeight til underliggende barn - [begrep 1153637007](https://browser.ihtsdotools.org/?perspective=full&conceptId1=1153637007&edition=MAIN/SNOMEDCT-NO&release=&languages=no,en).  
  * OK: Endre SNOMED begrep som benyttes i profilen. @lnystad
  * TODO: Endre tabellen på forsiden. @thomiz
* Mer utfyllende beskrivelse på bruk av slice på performer. Dataansvar eller opprinnelse, hvordan angir vi det.  
  * bruk av author og Organization for å dokumentere dataansvar. Viktig for eksempel for DHO hvor det er pasient ikke er del av ansvarlig organisasjon (dataansvarlig).  
  * TODO: skrive noe guideance om ansvarlig virksomhet
* Endre Base-profil til Domain-profile på overordnet beskrivelse av profilene.
  * TODO: endre fra "base" til "domain"  
* I beskrivelse – dokumentere at man skal benytte puls som hovedregel.  
  * heart-rate er kun aktuelt i spesielle tilfeller. (vi holder nyanser mtp pulsklokker med EKG etc utenfor inntil videre 😊).  
  * TODO: oppdatere guideance (og kanskje noe i heartrate profil)
* Skrive eksplisitt at ytterligere informasjon om hva som er inkludert og ekskludert i konseptene / ekstensjonene er dokumntert i sin helhet i arketypene (med link til CKM).  
  * Forklarende tekster fra arketypen er ikke med i resp rate, kan være et problem.
  * TODO: Mer informasjon her i overskriften.
* Spontanous breathing – fjerne VS som suffiks i navn på verdisett.  
  * OK: Ta bort VS @lnystad 
* Bruk engelsk i NoDomainVitalSignsObservationProsentO2. 
  * (Inne i InspiredOxygen utvidelsen) 
  * OK: Bruk engelsk i navnet. @lnystad 
* Eksemplene inneholder mange feil, hovedsaklig språk (validator krever engelsk)
  * TODO: Validerbare eksempler @lnystad sjekker

### 2025-02-10 DIPS endringer

* Bloodpressure profil value sett for metode. Sende mail til Silje og Marte om hva som er kodene for automatisk invasiv og ikke invasiv.
* Endre tilbake itl å ha "valueset" postfix i filnavnet
* 
