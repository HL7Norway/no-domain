Extension: NoDomainVitalSignsObservationSleepStatus
Id: NoDomainVitalSignsObservationSleepStatus
Description: "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records."
* ^url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationSleepStatus"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationSleepStatus" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVitalSignsObservationSleepStatusValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVitalSignsObservationSleepStatusValueSet (required)
// * value[x].coding.system 1..
// * value[x].coding.system from $no-sleepStatus-valueset (required)
* value[x].coding.version ..0
* value[x].coding.code 1..
// * value[x].coding.code from $no-sleepStatus-valueset (required)
* value[x].coding.userSelected ..0
* value[x].text ..0