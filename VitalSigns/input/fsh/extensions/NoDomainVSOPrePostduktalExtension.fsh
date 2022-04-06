Extension: NoDomainVSOPrepostduktalextension
Id: NoDomainVSOPrepostduktalextension
Description: "Description of the pre/post/intermediate level of ductal"
* ^url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-prepostduktalextension"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* . ..1
* url = "http://hl7.org/fhir/StructureDefinition/no-domain-vso-prepostduktalextension" (exactly)
* value[x] only Coding
* value[x] from NoDomainVSOPrePostduktalValueSet (required)