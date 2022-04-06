Extension: NoDomainVSOHeartRateBodyPositionExtension
Id: NoDomainVSOHeartRateBodyPositionExtension
Description: "The body position of the subject during the observation."
* ^url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-heartrate-bodypositionextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-heartrate-bodypositionextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVSOHeartRateBodyPositionValueSet (required)
* value[x].coding from NoDomainVSOHeartRateBodyPositionValueSet (required)