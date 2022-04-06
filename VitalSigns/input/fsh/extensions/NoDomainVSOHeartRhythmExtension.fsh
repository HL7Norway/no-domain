Extension: NoDomainVitalSignsObservationHeartRhythmExtension
Id: NoDomainVitalSignsObservationHeartRhythmExtension
Description: "Regularity of the pulse or heart beat."
* ^url = "http://hl7.org/fhir/StructureDefinition/no-domain-vitalsignsobservation-heartrhythmextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/StructureDefinition/no-domain-vitalsignsobservation-heartrhythmextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVitalSignsObservationHeartRhythmValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVitalSignsObservationHeartRhythmValueSet (required)
* value[x].coding.system from $no-heartrhythm-valueset (required)