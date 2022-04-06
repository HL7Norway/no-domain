Extension: NoDomainVitalSignsObservationSpontaneousBreathingExtension
Id: NoDomainVitalSignsObservationSpontaneousBreathingExtension
Description: "A narrative description about the spontaneous breathing of the individual."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-spontaneousbreathingextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-spontaneousbreathingextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVitalSignsObservationSpontaneousBreathingValueSet (required)
* value[x].coding from NoDomainVitalSignsObservationSpontaneousBreathingValueSet (required)