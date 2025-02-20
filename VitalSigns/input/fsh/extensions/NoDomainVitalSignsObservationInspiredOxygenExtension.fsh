Extension: NoDomainVitalSignsObservationInspiredOxygen
Id: NoDomainVitalSignsObservationInspiredOxygen
Description: "Details of the amount of oxygen available to the subject at the time of observation."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationInspiredOxygen"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-01-28"
* ^context.type = #element
* ^context.expression = "Observation"
* extension contains
    NoDomainVitalSignsObservationFlow named Flow 0..1 and
    NoDomainVitalSignsObservationFiO2 named FiO2 0..1 and
    NoDomainVitalSignsObservationPercentO2 named PrecentO2 0..1 and
    NoDomainVitalSignsObservationOnAir named OnAir 0..1 and
    NoDomainVitalSignsObservationMethodofOxygenDelivery named MethodofOxygenDelivery 0..1
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationInspiredOxygen" (exactly)




Extension: NoDomainVitalSignsObservationFlow
Description: "Oxygen flow rate given to an individual."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationFlow"
* ^status = #draft
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationFlow" (exactly)
* value[x] only Quantity

Extension: NoDomainVitalSignsObservationFiO2
Description: "Fraction of oxygen in inspired air."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationFiO2"
* ^status = #draft
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationFiO2" (exactly)
* value[x] only Ratio

Extension: NoDomainVitalSignsObservationPercentO2
Description: "Percentage of oxygen in inspired air."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationPercentO2"
* ^status = #draft
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationPercentO2" (exactly)
* value[x] only Ratio

Extension: NoDomainVitalSignsObservationOnAir
Description: "The patient is receiving air, equivalent to 21% O₂ or 0.21 FiO₂ and an oxygen flow rate of 0 litres per minute."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationOnAir"
* ^status = #draft
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationOnAir" (exactly)
* value[x] only boolean

Extension: NoDomainVitalSignsObservationMethodofOxygenDelivery
Description: "The method used to deliver the oxygen."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationMethodofOxygenDelivery"
* ^status = #draft
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationMethodofOxygenDelivery" (exactly)
* value[x] only string