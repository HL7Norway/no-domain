Extension: NoDomainVitalSignsObservationRespirationRateBodyPosition
Id: NoDomainVitalSignsObservationRespirationRateBodyPosition
Description: "The body position of the individual during the observation."
* ^url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationRateBodyPosition"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationRateBodyPosition" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVitalSignsObservationRespirationRateBodyPosition (required)
* value[x].coding ..1
* value[x].coding from NoDomainVitalSignsObservationRespirationRateBodyPosition (required)