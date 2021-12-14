Extension: NoDomainVitalSignsObservationBloodPressureBodyPositionExtension
Id: NoDomainVitalSignsObservationBloodPressureBodyPositionExtension
Description: "The position of the individual at the time of measurement."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bloodpressure-bodypositionextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bloodpressure-bodypositionextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVitalSignsObservationBloodPressureBodyPositionValueSet (required)
* value[x].coding from NoDomainVitalSignsObservationBloodPressureBodyPositionValueSet (required)