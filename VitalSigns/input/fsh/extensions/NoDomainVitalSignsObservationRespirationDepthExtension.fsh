Extension: NoDomainVitalSignsObservationRespirationDepth
Id: NoDomainVitalSignsObservationRespirationDepth
Description: "The depth of spontaneous breathing."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationDepth"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationDepth" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationRespirationRateDepth (required)
// * value[x].coding ..1
// * value[x].coding from NoDomainVitalSignsObservationRespirationRateDepth (required)