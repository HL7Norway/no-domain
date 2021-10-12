Extension: NoDomainVitalSignsObservationRespirationDepthExtension
Id: NoDomainVitalSignsObservationRespirationDepthExtension
Description: "The depth of spontaneous breathing."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-respirationdepthextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-respirationdepthextension" (exactly)
* value[x] only CodeableConcept
* value[x] from $no-domain-vitalsignsobservation-respirationrate-depthvalueset (required)
* value[x].coding ..1
* value[x].coding from $no-domain-vitalsignsobservation-respirationrate-depthvalueset (required)