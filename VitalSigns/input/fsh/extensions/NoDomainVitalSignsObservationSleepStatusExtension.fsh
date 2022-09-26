Extension: NoDomainVitalSignsObservationSleepStatus
Id: NoDomainVitalSignsObservationSleepStatus
Description: "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationSleepStatus"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationSleepStatus" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationSleepStatusValueSet (required)
