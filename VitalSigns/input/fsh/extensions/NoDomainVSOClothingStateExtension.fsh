Extension: NoDomainVSOClothingStateExtension
Id: NoDomainVSOClothingStateExtension
Description: "Description of the state of dress of the person at the time of weighing."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-clothingstateextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-clothingstateextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVSOClothingStateValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVSOClothingStateValueSet (required)
* value[x].coding.code from NoDomainVSOClothingStateValueSet (required)