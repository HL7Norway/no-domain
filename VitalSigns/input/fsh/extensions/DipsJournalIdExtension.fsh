Extension: DipsJournalIdExtension
Id: DipsJournalIdExtension
Description: "DIPS extension for Journal ID, common for all DIPS vital sign profiles"
* ^url = "http://dips.no/fhir/StructureDefinition/DIPSJournalIdExtension"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://dips.no/fhir/StructureDefinition/DIPSJournalIdExtension" (exactly)
* value[x] only Reference
* value[x].identifier 1..
* value[x].identifier.use ..0
* value[x].identifier.type ..0
* value[x].identifier.system 1..
* value[x].identifier.system = "http://dips.no/fhir/namingsystem/dips-JournalId" (exactly)
* value[x].identifier.value 1..
* value[x].identifier.period ..0
* value[x].identifier.assigner ..0
* value[x].display ..0