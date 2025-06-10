Extension: NoDomainVitalSignsSleepStatusExtension
Id: NoDomainVitalSignsSleepStatusExtension
Description: "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records."
* ^status = #draft
* ^date = "2025-01-28"
* ^context.type = #element
* ^context.expression = "Observation"
* ^title = "NoDomainVitalSignsSleepStatus-Extension"
* value[x] only Coding
* value[x] from NoDomainVitalSignsSleepStatusValueSet (required)
