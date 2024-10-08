Extension: NoDomainVitalSignsObservationConfoundingFactor
Id: NoDomainVitalSignsObservationConfoundingFactor
Description: "Confounding factor is Issues or factors that may impact on <the measurement>, not captured in other fields"
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationConfoundingFactor"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
// * . ..1
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationConfoundingFactor" (exactly)
* value[x] only CodeableConcept