Extension: NoDomainVSOBodyHeightBodyPositionExtension
Id: NoDomainVSOBodyHeightBodyPositionExtension
Description: "Position of individual when body height measured."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-bodyheight-bodyposition-extension"
* ^version = "0.9.0000"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-bodyheight-bodyposition-extension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVSOBodyHeightBodyPositionValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVSOBodyHeightBodyPositionValueSet (required)