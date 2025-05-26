Extension: NoDomainVitalSignsInspiredOxygenExtension
Id: NoDomainVitalSignsInspiredOxygenExtension
Description: "Details of the amount of oxygen available to the subject at the time of observation."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension"
* ^version = "1.0.0"
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
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension" (exactly)




Extension: NoDomainVitalSignsFlowExtension
Description: "Oxygen flow rate given to an individual."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsFlowExtension"
* ^status = #draft
* ^title = "NoDomainVitalSignsFlow-Extension"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsFlowExtension" (exactly)
* value[x] only Quantity

Extension: NoDomainVitalSignsFiO2Extension
Description: "Fraction of oxygen in inspired air."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsFiO2Extension"
* ^status = #draft
* ^title = "NoDomainVitalSignsFiO2-Extension"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsFiO2Extension" (exactly)
* value[x] only Ratio

Extension: NoDomainVitalSignsPercentO2Extension
Description: "Percentage of oxygen in inspired air."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsPercentO2Extension"
* ^status = #draft
* ^title = "NoDomainVitalSignsPercentO2-Extension"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsPercentO2Extension" (exactly)
* value[x] only Ratio

Extension: NoDomainVitalSignsOnAirExtension
Description: "The patient is receiving air, equivalent to 21% O₂ or 0.21 FiO₂ and an oxygen flow rate of 0 litres per minute."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsOnAirExtension"
* ^status = #draft
* ^title = "NoDomainVitalSignsOnAir-Extension"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsOnAirExtension" (exactly)
* value[x] only boolean

Extension: NoDomainVitalSignsMethodofOxygenDeliveryExtension
Description: "The method used to deliver the oxygen."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsMethodofOxygenDeliveryExtension"
* ^status = #draft
* ^title = "NoDomainVitalSignsMethodofOxygenDelivery-Extension"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsMethodofOxygenDeliveryExtension" (exactly)
* value[x] only string