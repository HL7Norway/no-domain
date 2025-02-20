Extension: NoDomainVitalSignsObservationRespirationDepth
Id: NoDomainVitalSignsObservationRespirationDepth
Description: "The depth of spontaneous breathing."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationDepth"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-01-28"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationDepth" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationRespirationRateDepth (required)