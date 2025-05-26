Extension: NoDomainVitalSignsDiastolicEndPointExtension
Id: NoDomainVitalSignsDiastolicEndPointExtension
Description: "Record which Korotkoff sound is used for determining diastolic pressure using auscultative method."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsDiastolicEndPointExtension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #fhirpath
* ^context.expression = "Observation"
* ^title = "NoDomainVitalSignsDiastolicEndPoint-Extension"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsDiastolicEndPointExtension" (exactly)
* value[x] only Coding
* value[x] from NoDomainVitalSignsDiastolicendPointValueSet (required)
