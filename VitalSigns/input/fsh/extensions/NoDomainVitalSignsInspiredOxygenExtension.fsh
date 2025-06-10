Extension: NoDomainVitalSignsInspiredOxygenExtension
Id: NoDomainVitalSignsInspiredOxygenExtension
Description: "Details of the amount of oxygen available to the subject at the time of observation."
* ^status = #draft
* ^date = "2025-01-28"
* ^context.type = #element
* ^context.expression = "Observation"
* ^title = "NoDomainVitalSignsInspiredOxygen-Extension"
* extension contains
    NoDomainVitalSignsFlowExtension named Flow 0..1 and
    NoDomainVitalSignsFiO2Extension named FiO2 0..1 and
    NoDomainVitalSignsPercentO2Extension named PrecentO2 0..1 and
    NoDomainVitalSignsOnAirExtension named OnAir 0..1 and
    NoDomainVitalSignsMethodofOxygenDeliveryExtension named MethodofOxygenDelivery 0..1




Extension: NoDomainVitalSignsFlowExtension
Description: "Oxygen flow rate given to an individual."
* ^status = #draft
* ^title = "NoDomainVitalSignsFlow-Extension"
* value[x] only Quantity

Extension: NoDomainVitalSignsFiO2Extension
Description: "Fraction of oxygen in inspired air."
* ^status = #draft
* ^title = "NoDomainVitalSignsFiO2-Extension"
* value[x] only Ratio

Extension: NoDomainVitalSignsPercentO2Extension
Description: "Percentage of oxygen in inspired air."
* ^status = #draft
* ^title = "NoDomainVitalSignsPercentO2-Extension"
* value[x] only Ratio

Extension: NoDomainVitalSignsOnAirExtension
Description: "The patient is receiving air, equivalent to 21% O₂ or 0.21 FiO₂ and an oxygen flow rate of 0 litres per minute."
* ^status = #draft
* ^title = "NoDomainVitalSignsOnAir-Extension"
* value[x] only boolean

Extension: NoDomainVitalSignsMethodofOxygenDeliveryExtension
Description: "The method used to deliver the oxygen."
* ^status = #draft
* ^title = "NoDomainVitalSignsMethodofOxygenDelivery-Extension"
* value[x] only string