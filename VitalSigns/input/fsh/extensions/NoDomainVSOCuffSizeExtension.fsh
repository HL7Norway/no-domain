Extension: NoDomainVSOCuffSizeExtension
Id: NoDomainVSOCuffSizeExtension
Description: "The size of the cuff used for blood pressure measurement."
* ^url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-cuffsizeextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-cuffsizeextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVSOCuffsizeValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVSOCuffsizeValueSet (required)
* value[x].coding.system = "http://snomed.info/sct" (exactly)
* value[x].coding.code = #246153002 (exactly)