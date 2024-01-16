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
    Flow named Flow 0..1 and
    FiO2 named FiO2 0..1 and
    ProsentO2 named ProsentO2 0..1 and
    OnAir named OnAir 0..1 and
    MethodofOxygenDelivery named MethodofOxygenDelivery 0..1
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationInspiredOxygen" (exactly)




Extension: Flow
* ^url = "http://hl7.no/fhir/StructureDefinition/Flow"
* ^status = #draft
* url = "http://hl7.no/fhir/StructureDefinition/Flow" (exactly)
* value[x] only Quantity

Extension: FiO2
* ^url = "http://hl7.no/fhir/StructureDefinition/FiO2"
* ^status = #draft
* url = "http://hl7.no/fhir/StructureDefinition/FiO2" (exactly)
* value[x] only Ratio

Extension: ProsentO2
* ^url = "http://hl7.no/fhir/StructureDefinition/ProsentO2"
* ^status = #draft
* url = "http://hl7.no/fhir/StructureDefinition/ProsentO2" (exactly)
* value[x] only Ratio

Extension: OnAir
* ^url = "http://hl7.no/fhir/StructureDefinition/OnAir"
* ^status = #draft
* url = "http://hl7.no/fhir/StructureDefinition/OnAir" (exactly)
* value[x] only boolean

Extension: MethodofOxygenDelivery
Description: "Futhure details of method of oxygen delivery"
* ^url = "http://hl7.no/fhir/StructureDefinition/MethodofOxygenDelivery"
* ^status = #draft
* url = "http://hl7.no/fhir/StructureDefinition/MethodofOxygenDelivery" (exactly)
* value[x] only string