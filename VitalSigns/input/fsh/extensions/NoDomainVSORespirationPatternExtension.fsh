Extension: NoDomainVSORespirationPatternExtension
Id: NoDomainVSORespirationPatternExtension
Description: "The depth of respiration patterns"
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-respirationpatternextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* . ..1
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-respirationpatternextension" (exactly)
* value[x] only CodeableConcept
* value[x] from $no-domain-vso-respirationrate-patternvalueset (required)
* value[x].coding ..1
* value[x].coding from $no-domain-vso-respirationrate-patternvalueset (required)