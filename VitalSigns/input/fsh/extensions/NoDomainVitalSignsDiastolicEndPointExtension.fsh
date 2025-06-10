Extension: NoDomainVitalSignsDiastolicEndPointExtension
Id: NoDomainVitalSignsDiastolicEndPointExtension
Description: "Record which Korotkoff sound is used for determining diastolic pressure using auscultative method."
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #fhirpath
* ^context.expression = "Observation"
* ^title = "NoDomainVitalSignsDiastolicEndPoint-Extension"
* value[x] only Coding
* value[x] from NoDomainVitalSignsDiastolicendPointValueSet (required)
