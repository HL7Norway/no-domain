Extension: NoDomainVitalSignsObservationHeartRhythmIrregularity
Id: NoDomainVitalSignsObservationHeartRhythmIrregularity
Description: "More specific pattern of an irregular pulse or heart beat."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRhythmIrregularity"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRhythmIrregularity" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationHeartRhythmIrregularity (required)
// * value[x].coding ..1
// * value[x].coding from NoDomainVitalSignsObservationHeartRhythmIrregularity (required)