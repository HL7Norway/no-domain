Extension: NoDomainVitalSignsObservationOxygenSaturationExtension
Id: NoDomainVitalSignsObservationOxygenSaturationExtension
* ^url = "https://www.hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-oxygensaturationextension"
* ^version = "0.9.0000"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    Flow 0..* and
    FiO2 0..* and
    O2percentage 0..* and
    oxygenadministrationmethod 0..*
* extension[Flow].value[x] only Quantity
* extension[FiO2].value[x] only Ratio
* extension[O2percentage].value[x] only Ratio
* extension[oxygenadministrationmethod].value[x] only string
* url = "https://www.hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-oxygensaturationextension" (exactly)