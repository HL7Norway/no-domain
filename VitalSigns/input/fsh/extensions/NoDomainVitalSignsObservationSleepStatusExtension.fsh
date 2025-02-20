Extension: NoDomainVitalSignsObservationSleepStatus
Id: NoDomainVitalSignsObservationSleepStatus
Description: "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationSleepStatus"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-01-28"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationSleepStatus" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationSleepStatus (required)
