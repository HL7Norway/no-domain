Extension: NoDomainVitalSignsObservationPrePostduktalExtension
Id: NoDomainVitalSignsObservationPrePostduktalExtension
* ^url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationPrePostduktalExtension"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* . ..1
* url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationPrePostduktalExtension" (exactly)
* value[x] only Coding
* value[x] from $no-domain-vitalsignsobservation-prepostduktalvalueset (required)