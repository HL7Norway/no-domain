Extension: NoDomainVitalSignsObservationBodyExposure
Id: NoDomainVitalSignsObservationBodyExposure
Description: "The degree of exposure of the individual at the time of measurement."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBodyExposure"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBodyExposure" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationBodyExposure (required)
// * value[x].coding ..1
// * value[x].coding from NoDomainVitalSignsObservationBodyExposure (required)
