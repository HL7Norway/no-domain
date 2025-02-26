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
    Flow 0..1 and
    FiO2 0..1 and
    PrecentO2 0..1 and
    OnAir 0..1 and
    MethodofOxygenDelivery 0..1
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationInspiredOxygen" (exactly)

* extension[Flow] ^definition = "Oxygen flow rate given to an individual."
* extension[Flow].value[x] only Quantity
* extension[FiO2] ^definition = "Fraction of oxygen in inspired air."
* extension[FiO2].value[x] only Ratio
* extension[PrecentO2] ^definition = "Percentage of oxygen in inspired air."
* extension[PrecentO2].value[x] only Ratio
* extension[OnAir] ^definition = "The patient is receiving air, equivalent to 21% O₂ or 0.21 FiO₂ and an oxygen flow rate of 0 litres per minute."
* extension[OnAir].value[x] only boolean
* extension[MethodofOxygenDelivery] ^definition = "The method used to deliver the oxygen."
* extension[MethodofOxygenDelivery].value[x] only string