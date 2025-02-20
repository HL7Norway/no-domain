Extension: NoDomainVitalSignsObservationRespirationRateBodyPosition
Id: NoDomainVitalSignsObservationRespirationRateBodyPosition
Description: "The body position of the individual during the observation."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationRateBodyPosition"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-01-28"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationRateBodyPosition" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationRespirationRateBodyPosition (required)
// * value[x].coding ..1
// * value[x].coding from NoDomainVitalSignsObservationRespirationRateBodyPosition (required)