Extension: NoDomainVSOSleepStatusExtension
Id: NoDomainVSOSleepStatusExtension
Description: "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records."
* ^url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-sleepstatusextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-sleepstatusextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVSOSleepStatusValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVSOSleepStatusValueSet (required)
* value[x].coding.system 1..
* value[x].coding.system from NoDomainVSOSleepStatusValueSet (required)
* value[x].coding.version ..0
* value[x].coding.code 1..
* value[x].coding.code from NoDomainVSOSleepStatusValueSet (required)
* value[x].coding.userSelected ..0
* value[x].text ..0