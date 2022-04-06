Extension: NoDomainVSOHeartRhythmExtension
Id: NoDomainVSOHeartRhythmExtension
Description: "Regularity of the pulse or heart beat."
* ^url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-heartrhythmextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-heartrhythmextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVSOHeartRhythmValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVSOHeartRhythmValueSet (required)
* value[x].coding.system from $no-heartrhythm-valueset (required)