Extension: NoDomainVitalSignsObservationDiastolicEndPointExtension
Id: NoDomainVitalSignsObservationDiastolicEndPointExtension
Description: "Record which Korotkoff sound is used for determining diastolic pressure using auscultative method."
* ^url = "http://hl7.org/fhir/StructureDefinition/no-domain-vitalsignsobservation-diastolicendpointextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #fhirpath
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/StructureDefinition/no-domain-vitalsignsobservation-diastolicendpointextension" (exactly)
* value[x] only CodeableConcept
* value[x] from $no-domain-vitalsignsobservation-diastolicendpointvalueset (required)
* value[x].coding ..1
* value[x].coding from $no-domain-vitalsignsobservation-diastolicendpointvalueset (required)