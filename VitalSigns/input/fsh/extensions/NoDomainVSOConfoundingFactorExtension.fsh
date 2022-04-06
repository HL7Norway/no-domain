Extension: NoDomainVitalSignsObservationConfoundingFactorExtension
Id: NoDomainVitalSignsObservationConfoundingFactorExtension
Description: "Description of the confounding factor."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-confoundingfactorextension"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* . ..1
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-confoundingfactorextension" (exactly)
* value[x] only string