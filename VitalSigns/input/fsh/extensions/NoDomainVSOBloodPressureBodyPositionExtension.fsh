Extension: NoDomainVSOBloodPressureBodyPositionExtension
Id: NoDomainVSOBloodPressureBodyPositionExtension
Description: "The position of the individual at the time of measurement."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-bloodpressure-bodypositionextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-bloodpressure-bodypositionextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVSOBloodPressureBodyPositionValueSet (required)
* value[x].coding from NoDomainVSOBloodPressureBodyPositionValueSet (required)