Extension: NoDomainVSORespirationDepthExtension
Id: NoDomainVSORespirationDepthExtension
Description: "The depth of spontaneous breathing."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-respirationdepthextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-respirationdepthextension" (exactly)
* value[x] only CodeableConcept
* value[x] from NoDomainVSORespirationRateDepthValueSet (required)
* value[x].coding ..1
* value[x].coding from NoDomainVSORespirationRateDepthValueSet (required)