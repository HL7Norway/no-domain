Extension: NoDomainVitalSignsObservationBodyExposureExtension
Id: NoDomainVitalSignsObservationBodyExposureExtension
Description: "The degree of exposure of the individual at the time of measurement."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bodyexposureextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bodyexposureextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVitalSignsObservationBodyExposureValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVitalSignsObservationBodyExposureValueSet (required)