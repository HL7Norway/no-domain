## Møtenotater 2024-01-17 Vitale parametere no-domain

### Tilstede

Marthe, LAN, Terje, Thomas.

### QA av profilene vitalsigns og verdisett

#### Agenda

1. QA av verdisett og ny profil for puls.
2. Hva gjør vi videre med forslaget til profiler?
3. Integrasjon med vitale parametere implementert i VKP.
4. Møterigg for fortsettelsen arketyper/PKT/Helsenord/HL7 Norge?
5. Eventuelt

### Notater

1. Noe vi sliter med fremdeles. Cuff Size er et problem. Voksne, store voksne og små voksne.
   1. ObservationCuffSize valueset har to feil. Gale koder (like) for ulike SNOMED begreper. Ekspansjonen fungerer ikke fordi IG byggeren ikke klarer å håndtere begreper som er definert i den norske ekstensjonen av SNOMED.
      1. Bestillingen er liten, medium og stor voksen, lår voksen, pediatrisk (barn), neonatal og spedbarn.  
      2. SNOMED mangler stor voksen og liten voksen.
      3. Marthe kommer med forslag til begreper for blodtrykksmansjettene.
   2. En utfordring at den norske ekstensjonen av SNOMED, det kan hende HL7 løser dette med en oppdatering av byggeverktøyet.  
   3. Pulse og heart rate profil, beskrivelse av hva som er pulse.  
      1. Sette opp en oversikt over hvor i hierarkiet de kodene ligger i forhold til hverandre, sjekk også mot SNOMED/LOINC mappingen som er publisert internasjonalt.
      2. "Dorsalis pedis" mangler for pulseBodySite verdisettet.  
2. Hva gjør vi videre med QA og publisering av profilene.  
3. Viktig med integrasjon med vitale parametere i VKP.  
4. Bugfix - og så pull request til master.  
   1. Intern kvalitetssikring sammen med arketypegjengen.  
   2. Arbeidsmøte med arketyper, gå igjennom alle profilene og verdisettene.  
5. Thomas kaller inn til arbeidsmøte - Marthe, Terje, Arketypegjengen og LAN og meg Eventuelt med VKP folket.  
6. Eventuelt  

### Aksjoner

**Marthe** oppretter SNOMED koder for [NoDomainVitalSignsObservationCuffsizeValueSet](https://github.com/HL7Norway/no-domain/blob/feature/lan09012024/VitalSigns/input/fsh/valuesets/NoDomainVitalSignsObservationCuffsizeValueSet.fsh) (og eventuelt fjerner koden for medium voksen fra norsk ekstensjon).
**Lars Andreas** legger inn riktige kodeverdier for [NoDomainVitalSignsObservationCuffsizeValueSet](https://github.com/HL7Norway/no-domain/blob/feature/lan09012024/VitalSigns/input/fsh/valuesets/NoDomainVitalSignsObservationCuffsizeValueSet.fsh) når vi har alle vi trenger i den norske ekstensjonen.
**Thomas** Sjekker status på byggeverktøy og mulighet til å knytte bygg til flere terminologitjenere. Eventuelt andre metoder å få ekspandert koder fra nasjonale ekstensjoner av SNOMED.
**Lars Andreas** fikser tekst for pulse profilen (den beskriver nå heart rate).
**Lars andreas** legger til kode for "Dorsalis pedis" i (NoDomainVitalSignsObservationPulsBodySite)[https://github.com/HL7Norway/no-domain/blob/feature/lan09012024/VitalSigns/input/fsh/valuesets/NoDomainVitalSignsObservationPulsBodySite.fsh].
**Thomas** Kontakter VKP om synk av profilene for vitale parametere med no-domain.
**Thomas** Kaller inn til arbeidsmøte for kvalitetssikring av profilene/verdisettene. Marthe, Terje, Arketypegjengen og LAN og meg + Eventuelt med VKP folket.