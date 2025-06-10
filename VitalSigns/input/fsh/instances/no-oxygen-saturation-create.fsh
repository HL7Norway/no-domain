Instance: no-oxygen-saturation-create
InstanceOf: NoDomainVitalSignsObservationOxygenSaturation
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "HL7_Norway"
* extension[0].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension"
* extension[=].extension[0].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsFlowExtension"
* extension[=].extension[=].valueQuantity.value = 6100
* extension[=].extension[=].valueQuantity.unit = "ml/min"
* extension[=].extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsFiO2Extension"
* extension[=].extension[=].valueRatio.numerator.value = 21
* extension[=].extension[=].valueRatio.denominator.value = 100
* extension[=].extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsPercentO2Extension"
* extension[=].extension[=].valueRatio.numerator.value = 21
* extension[=].extension[=].valueRatio.denominator.value = 100
* extension[=].extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsOnAirExtension"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsMethodofOxygenDeliveryExtension"
* extension[=].extension[=].valueString = "Oxygen administration method"
\* extension\[\+\]\.url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension"
* extension[=].valueCodeableConcept.text = "sample confounding factor"
* status = #final
* code.coding[0] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[+] = $sct#431314004 "Peripheral oxygen saturation (observable entity)"
* subject = Reference(Patient/cdp1000240)
* subject.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* subject.identifier.value = "1000240"
* effectiveDateTime = "2021-05-10"
* performer[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* performer[=].identifier.value = "889911"
* performer[+] = Reference(Organization/afa23)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "23"
* bodySite.text = "Demo pulse oxymetri bodysite"
* note.text = "Demo pulse oxymetri"
* valueQuantity.value = 24
* valueQuantity.unit = #%
