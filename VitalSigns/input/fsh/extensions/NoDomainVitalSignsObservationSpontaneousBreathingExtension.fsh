Extension: NoDomainVitalSignsObservationSpontaneousBreathing
Id: NoDomainVitalSignsObservationSpontaneousBreathing
Description: "A narrative description about the spontaneous breathing of the individual."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationSpontaneousBreathing"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationSpontaneousBreathing" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsObservationSpontaneousBreathingVS (required)
// * value[x].coding from NoDomainVitalSignsObservationSpontaneousBreathingVS (required)