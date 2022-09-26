Extension: NoDomainVitalSignsObservationClothingState
Id: NoDomainVitalSignsObservationClothingState
Description: "Description of the state of dress of the person at the time of weighing."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationClothingState"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationClothingState" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationClothingState (required)
// * value[x].coding ..1
// * value[x].coding from NoDomainVitalSignsObservationClothingState (required)
