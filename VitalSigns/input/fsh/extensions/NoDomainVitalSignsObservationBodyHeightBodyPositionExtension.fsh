Extension: NoDomainVitalSignsObservationBodyHeightBodyPositionExtension
Id: NoDomainVitalSignsObservationBodyHeightBodyPositionExtension
Description: "Position of individual when body height measured."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bodyheight-bodypositionextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bodyheight-bodypositionextension" (exactly)
* value[x] only CodeableConcept
* value[x] from $no-domain-vitalsignsobservation-bodyheight-bodypositionvalueset (required)
* value[x].coding ..1
* value[x].coding from $no-domain-vitalsignsobservation-bodyheight-bodypositionvalueset (required)