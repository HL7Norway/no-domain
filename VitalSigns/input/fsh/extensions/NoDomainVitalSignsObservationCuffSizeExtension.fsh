Extension: NoDomainVitalSignsObservationCuffSize
Id: NoDomainVitalSignsObservationCuffSize
Description: "The size of the cuff used for blood pressure measurement."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationCuffSize"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationCuffSize" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationCuffsize (required)

// * value[x].coding.system = "http://snomed.info/sct" (exactly)
// * value[x].coding.code = #246153002 (exactly)