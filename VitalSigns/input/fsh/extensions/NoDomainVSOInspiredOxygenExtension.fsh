Extension: NoDomainVSOInspiredOxygenExtension
Id: NoDomainVSOInspiredOxygenExtension
Description: "Details of the amount of oxygen available to the subject at the time of observation."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-inspiredoxygenextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    oxygenAdministrationMethod 0..1 and
    Flow 0..1 and
    FiO2 0..1 and
    ProsentO2 0..1 and
    onAir 0..1
* extension[oxygenAdministrationMethod] ^short = "http://dips.no/fhir/StructureDefinition/OxygenAdministrationMethodExtension"
* extension[oxygenAdministrationMethod].value[x] only string
* extension[Flow] ^short = "http://dips.no/fhir/StructureDefinition/FlowExtension"
* extension[Flow].value[x] only Quantity
* extension[FiO2] ^short = "http://dips.no/fhir/StructureDefinition/FiO2Extension"
* extension[FiO2].value[x] only Ratio
* extension[ProsentO2] ^short = "http://dips.no/fhir/StructureDefinition/ProsentO2Extension"
* extension[ProsentO2].value[x] only Ratio
* extension[onAir] ^short = "http://dips.no/fhir/StructureDefinition/OnAir"
* extension[onAir].value[x] only boolean
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-inspiredoxygenextension" (exactly)