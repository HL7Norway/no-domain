Extension: NoDomainVitalSignsObservationClothingStateExtension
Id: NoDomainVitalSignsObservationClothingStateExtension
Description: "Description of the state of dress of the person at the time of weighing."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationClothingStateExtension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationClothingStateExtension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVitalSignsObservationClothingStateValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVitalSignsObservationClothingStateValueSet (required)
* value[x].coding.code from NoDomainVitalSignsObservationClothingStateValueSet (required)