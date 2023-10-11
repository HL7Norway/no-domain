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

Vi trenger en metode som støtter både "dynamiske" og "statiske verdisett. Forslaget støtter bare statiske (spesifikk versjon) av verdisett i IG'en.

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

### Element-referanser brukt i mappingen

OK

### Puls og hjertefrekvens

Puls:Målested:Hjertet - splittet terminologibining for puls og hjertefrekvens.

Splittet i puls og hjertefrekvens -  

* Arketyper deler også i to separate arketyper, ikke noe som finnes i gjeldende versjon.
* Naturlig konsekvens er at dette blir separate profiler i FHIR.
  * Dette må gjenspeiles internasjonalt, hvordan tar vi dette videre.
  * Får vi til dette i FHIR

### SNOMED missing codes

For puls målemetode og blodtrykk målemetode.  
Må modelleres omigjen i arketypene.  
Siden SNOMED ikke har en mapping til arketype kan de heller ikke levere refset.

* Vi trenger kanskje ikke for første release av vitale parameter FHIR profilene?
  * Enklere å legge til noe senere enn å endre på noe som er feil.
