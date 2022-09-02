Extension: NoDomainVitalSignsObservationHeartRateBodyPosition
Id: NoDomainVitalSignsObservationHeartRateBodyPosition
Description: "The body position of the subject during the observation."
* ^url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRateBodyPosition"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRateBodyPosition" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVitalSignsObservationHeartRateBodyPosition (required)
* value[x].coding from NoDomainVitalSignsObservationHeartRateBodyPosition (required)