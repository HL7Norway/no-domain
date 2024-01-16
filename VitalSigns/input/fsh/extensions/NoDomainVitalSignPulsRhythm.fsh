Extension: NoDomainVitalSignsObservationPulsRhythm
Id: NoDomainVitalSignsObservationPulsRhythm
Description: "Regularity of the pulse or heart beat."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationPulsRhythm"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationPulsRhythm" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationPulsRhythm (required)
// * value[x].coding ..1
// * value[x].coding from NoDomainVitalSignsObservationHeartRhythm (required)
// * value[x].coding.system from $no-heartrhythm-valueset (required)