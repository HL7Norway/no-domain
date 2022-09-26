Extension: NoDomainVitalSignsObservationRespirationRegularity
Id: NoDomainVitalSignsObservationRespirationRegularity
Description: "The regularity of spontaneous breathing."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationRegularity"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationRegularity" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationRespirationRegularity (required)
// * value[x].coding ..1
// * value[x].coding from NoDomainVitalSignsObservationRespirationRegularity (required)