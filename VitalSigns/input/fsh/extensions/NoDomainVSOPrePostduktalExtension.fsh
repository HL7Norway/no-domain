Extension: NoDomainVitalSignsObservationPrePostduktalExtension
Id: NoDomainVitalSignsObservationPrePostduktalExtension
Description: "Description of the pre/post/intermediate level of ductal"
* ^url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationPrePostduktalExtension"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* . ..1
* url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationPrePostduktalExtension" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationPrePostduktalValueSet (required)