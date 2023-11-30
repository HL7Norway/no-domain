# Terminologi vitale parametere

## Agenda

1. Krav til verdisett fra SNOMED CT for bruk i HL7 FHIR IG, diskusjon om versjonering av verdisett fra Snowstorm (Thomas og Øyvind) 35 min
1. Avklaring av detaljerte spørsmål knyttet til verdisettene for vitale parametere og innholdet i disse (Karol) 45 min
   1. Cuff size prekoordinering og postkoordinering (Ulrich)
1. Utkast til metode for utvikling av terminologi knyttet til no-domain og basert på arbeidet med vitale parametere (Thomas) 40 min
1. Eventuelt (Alle)

## Tilstede

Silje, Vedbjørn, Terje, Lars andreas, Ulrich, Eirik, Espen og Øyvind.

## Krav til verdisett fra SNOMED i IG

Hvis verdisettet endrer seg vil vi måtte bygge IG-omigjen hver gang dette oppdateres siden IG er knyttet til en spesifikk versjon av verdisettet.
Er det en løsning å ha ulike arbeidsmetode for dynamiske og "statiske" verdisett.  

* Dynamiske verdisett vil ikke fungere i bygging av programvaren heller i allefall ikke med utgangspunkt i IG'en.
  * Er det noen måte å støtte dynamiske verdisett på med denne arbeidsflyten?

Avklaring: er det ønskelig med mest mulig dynamisk bruk av verdisett  

* Arketypene - 
* Implementørene - 
* Programvare må oppdateres - 
* IG må oppdateres - 
* Standardiseringsprosess - 

* Henvist til noen spesifikke verdisett på volven og et subtre på Volven -  
  * Vi må ha en mulighet for dynamisk definisjon også - det må vi finne ut av hvordan vi skal gjøre.
  * Det bør være et bevisst valg om man henviser til current version eller en versjon

To use-case:  

* Noen use-case forholder seg til en versjon av value-settet.
* Noen use-case forholder seg til en versjonsuavhengig (siste) versjon forvaltet av andre.  

### Konklusjon

* FHIR miljøet må se på hvordan metoden for bruk av verdisett skal fungere ved "dynamiske" verdisett.
  * Vi trenger en metode som støtter både "dynamiske" og "statiske verdisett. Forslaget støtter bare statiske (spesifikk versjon) av verdisett i IG'en.

* Verdisettet blir ikke vist i IG'en.
* Vi må vite at vi kan få verdisett med id og url som lever på Snowstorm, dette er ennå uavklart om vi får fra PKT.

## Detaljerte spørsmål (Ulrich og Karol)

* Ønske om snapshot og andre utvekslingsformater for utveksling av term definisjoner fra SNOWSTORM.

### Cuff size

Mansjettstørrelse.

* Hvorfor er begrepet deaktivert internasjonalt?
* Hvorfor er det ikke et begrep i den internasjonale versjonen som dekker klinikerens behov for å uttrykke størrelsen på mansjettstørrelsen.
  * Permutative extensioner er uønsket, for eksempel voksenstørrelse og barnestørrelse cuff size.
* Snomed internasjonal tar til orde for økt bruk av postkoordinering
  * Det er endel utfordringer knyttet til dette for brukeren av systemene.
  * Det er en del utfordringer knyttet til dette for de som skal implementere.
  * Postkoordineringene samles sammen i valueset's design time.
  * Hvordan ser disse verdisettene ut?
  * Dataelementet kan ta seg av postkoordineringen hvis dataelementet bruker mer atomiske termer fra Snomed.
* Prekoordinering uten grenser blir uhåndterlig.
  * Prekoordinerte sammenstillinger kan bygges både nasjonalt og internasjonalt.
  * Flytter kompleksiteten til et annet nivå som ikke hjelper på muligheten til å forvalte dette.
* Vil gjerne se verdisettet konkret.
  * Det kan være ulemper med veldig mye postkoordinering, spesielt i kombinasjon med FHIR og faktisk programvare.
* Det kan gjøre ting lettere for cuff-size.
  * Hvis vi binder til bare størrelse for eksempel.

#### Konklusjon

Versjonen som legges ut nå er foreldre begrepene.  

* Vi må få vurdert om referansesettet som er foreslått (med bruk av foreldrebegrepene) er dekkende.  
* Det virket OK i møtet.  

### Element-referanser brukt i mappingen

OK

* Spørsmål: Path til "Stor voksen cuff": openEHR-EHR-OBSERVATION.blood_pressure.v2/protocol[at0011]/items[at0013]/value/defining_code[at0016] (så ikke så veldig nyttig for menneskelesing)
* Svar: Takk for innspill, dette er et godt svar på systematisk håndtering. Jeg tenker at det er en bedre og mer standard måte å referere til elementene (iht. OpenEHR). Menneskelig lesbare termer (i flere språk) kan man heller utlede fra denne stien i systemene (Roadmap of the openEHR Java project, openEHR / java-libs). Til en forbedret versjon av mappingen (etter oktober) prøver vi å løfte referansesettet til denne formalismen.  

### Puls og hjertefrekvens

Puls:Målested:Hjertet - splittet terminologibining for puls og hjertefrekvens.

Splittet i puls og hjertefrekvens -  

#### Konklusjon

* Arketyper deler også i to separate arketyper, ikke noe som finnes i gjeldende versjon.
* Naturlig konsekvens er at dette blir separate profiler i FHIR.
  * Dette må gjenspeiles internasjonalt, hvordan tar vi dette videre.
  * Får vi til dette i FHIR?  
    * Må vurderes av HL7 Norge  
    * Lage forslag til puls i IG'en for no-domain  

### SNOMED missing codes

For puls målemetode og blodtrykk målemetode.  
Må modelleres omigjen i arketypene.  
Siden SNOMED ikke har en mapping til arketype kan de heller ikke levere refset.

#### Konklusjon

* Vi trenger kanskje ikke for første release av vitale parameter FHIR profilene?
  * Enklere å legge til noe senere enn å endre på noe som er feil.

## Videre arbeid

* FHIR miljøet bestiller verdisett på SNOWSTORM med id og url.
  * Se på forvaltningsprosess for releaser på MLDS kommer på SNOWSTORM produksjonsserver for SNOMED.
  * Får vi verdisett, diskusjon med Marte.
* Produksjonstjenester for løsningsutviklere og IG utviklere av SNOMED.
  * FHIR miljøet trenger oversikt over dette.
* Driftsserver for snomed, kommer refsettene helt dit?
* Forvaltningsprosess for dette etter nyttår, er uavklart.

## 2023-10-19 - Ettermøte - no-domain oppsummering

Terje, LAN, Espen og Thomas

* HR og puls, hvordan får vi den videre?
  * Puls er hovedsaken, men heart-rate trengs i spesielle situasjoner
  * To profiler som arver heart-rate?
  * Avgivende system bør angi både puls og HR med SNOMED
  * CIMI lagde to nye profiler begge arver direkte fra vital-signs toppnivået
  * Hvilke koder fra SNOMED er det vi har bestemt oss for?

* SNOMED gjengen skal ha logikk i postkoordinerte uttrykk
  * Det kan være ulemper med veldig mye postkoordinering, spesielt i kombinasjon med FHIR og faktisk programvare  
  * Vi trenger at SNOMED viser hvordan disse uttrykkene blir seende ut for de relevante kodene.

* Hvorfor tar terminologiarbeidet langt tid, oppsummeres på Github
  * Bestille evaluering fra programmet (Terje)

* Vi må lage et forslag til modellering av pulse og heart-rate i to profiler i FHIR og sjekke om kodene fra SNOMED blir riktig.
