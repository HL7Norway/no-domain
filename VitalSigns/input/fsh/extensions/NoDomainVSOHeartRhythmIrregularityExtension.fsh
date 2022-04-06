Extension: NoDomainVitalSignsObservationHeartRhythmIrregularityExtension
Id: NoDomainVitalSignsObservationHeartRhythmIrregularityExtension
Description: "More specific pattern of an irregular pulse or heart beat."
* ^url = "http://hl7.org/fhir/StructureDefinition/no-domain-vitalsignsobservation-heartrhythmIrregularityextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/StructureDefinition/no-domain-vitalsignsobservation-heartrhythmIrregularityextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVitalSignsObservationHeartRhythmIrregularityValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVitalSignsObservationHeartRhythmIrregularityValueSet (required)