Extension: NoDomainVitalSignsObservationInspiredOxygen
Id: NoDomainVitalSignsObservationInspiredOxygen
Description: "Details of the amount of oxygen available to the subject at the time of observation."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationInspiredOxygen"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* extension contains
    OxygenAdministrationMethod named OxygenAdministrationMethod 0..1 and
    Flow named Flow 0..1 and
    FiO2 named FiO2 0..1 and
    ProsentO2 named ProsentO2 0..1 and
    OnAir named OnAir 0..1
// * extension[oxygenAdministrationMethod] ^short = "http://dips.no/fhir/StructureDefinition/oxygenAdministrationMethod"
// * extension[oxygenAdministrationMethod].value[x] only string
// * extension[Flow] ^short = "http://dips.no/fhir/StructureDefinition/Flow"
// * extension[Flow].value[x] only Quantity
// * extension[FiO2] ^short = "http://dips.no/fhir/StructureDefinition/FiO2"
// * extension[FiO2].value[x] only Ratio
// * extension[FiO2] ^short = "http://dips.no/fhir/StructureDefinition/FiO2"
// * extension[ProsentO2].value[x] only Ratio
// * extension[onAir] ^short = "http://dips.no/fhir/StructureDefinition/onAir"
// * extension[onAir].value[x] only boolean
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationInspiredOxygen" (exactly)


Extension: OxygenAdministrationMethod
* ^url = "http://hl7.no/fhir/StructureDefinition/OxygenAdministrationMethod"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/OxygenAdministrationMethod" (exactly)
* value[x] only string

Extension: Flow
* ^url = "http://hl7.no/fhir/StructureDefinition/Flow"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/Flow" (exactly)
* value[x] only Quantity

Extension: FiO2
* ^url = "http://hl7.no/fhir/StructureDefinition/FiO2"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/FiO2" (exactly)
* value[x] only Ratio

Extension: ProsentO2
* ^url = "http://hl7.no/fhir/StructureDefinition/ProsentO2"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/ProsentO2" (exactly)
* value[x] only Ratio

Extension: OnAir
* ^url = "http://hl7.no/fhir/StructureDefinition/OnAir"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/OnAir" (exactly)
* value[x] only boolean