Extension: NoDomainVitalSignsObservationBodyHeightBodyPosition
Id: NoDomainVitalSignsObservationBodyHeightBodyPosition
Description: "Position of individual when body height measured."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBodyHeightBodyPosition"
* ^version = "0.9.0000"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBodyHeightBodyPosition" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVitalSignsObservationBodyHeightBodyPosition (required)
* value[x].coding ..1
* value[x].coding from NoDomainVitalSignsObservationBodyHeightBodyPosition (required)