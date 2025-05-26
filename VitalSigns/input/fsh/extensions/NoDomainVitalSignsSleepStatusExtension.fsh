Extension: NoDomainVitalSignsSleepStatusExtension
Id: NoDomainVitalSignsSleepStatusExtension
Description: "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsSleepStatusExtension"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-01-28"
* ^context.type = #element
* ^context.expression = "Observation"
* ^title = "NoDomainVitalSignsSleepStatus-Extension"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsSleepStatusExtension" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsSleepStatusValueSet (required)
