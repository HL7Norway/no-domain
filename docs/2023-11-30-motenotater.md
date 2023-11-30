## Møtenotater 2023-11-30

### Revisjon av profilene vitalsigns

Opprette puls og heart rate profilene arver fra Heart rate.

* To nye profiler som arver fra vital-signs.
* Oppdatering av alle profiler og extensions fra ny kode fra DIPS. (Lars Andreas)
* Målemetode - Arketypemiljøet tenker på å remodellere.
  * der mangler vi riktig verdisett.
  * Mangler på målemetode for heartrate
  * Har to koder for målemetode for puls

* Thomas rydder i "snomed-vs" branch og dytter dette til master.
* Lars Andreas dytter ut ny kode for profiler, extension og verdisett som er oppdatert
* Så kjører vi nytt bygg. (Thomas)

* Evaluering fra programmet (er det fresk vi snakker om?).
  * Rigg med møter mellom arketyper/PKT/Helsenord/HL7 Norge. (Thomas)
  * Trenger felles møtepunkter

* Nytte av profilene.
  * For å få nytte må vi ha NEWS2
  * [Cambio](https://simplifier.net/guide/CambioImplementationGuide2/NEWS2?version=current) som utgangspunkt

* Puls og heartrate må modifiseres i arketypene.
  * Det er også andre endringer i arketypene som må gjøres.
  * 
