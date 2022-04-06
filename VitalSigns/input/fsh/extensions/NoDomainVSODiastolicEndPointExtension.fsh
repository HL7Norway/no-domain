Extension: NoDomainVSODiastolicEndPointExtension
Id: NoDomainVSODiastolicEndPointExtension
Description: "Record which Korotkoff sound is used for determining diastolic pressure using auscultative method."
* ^url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-diastolicendpointextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #fhirpath
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-diastolicendpointextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVSODiastolicendPointValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVSODiastolicendPointValueSet (required)