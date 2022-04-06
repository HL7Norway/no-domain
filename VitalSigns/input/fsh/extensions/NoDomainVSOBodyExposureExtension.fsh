Extension: NoDomainVSOBodyExposureExtension
Id: NoDomainVSOBodyExposureExtension
Description: "The degree of exposure of the individual at the time of measurement."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-bodyexposure-extension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-bodyexposure-extension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVSOBodyExposureValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVSOBodyExposureValueSet (required)