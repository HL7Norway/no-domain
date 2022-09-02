Extension: NoDomainVitalSignsObservationPrepostduktal
Id: NoDomainVitalSignsObservationPrepostduktal
Description: "Description of the pre/post/intermediate level of ductal"
* ^url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationPrepostduktal"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
// * . ..1
* url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationPrepostduktal" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationPrePostduktalVS (required)