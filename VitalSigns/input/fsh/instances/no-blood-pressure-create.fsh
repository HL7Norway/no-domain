Instance: no-blood-pressure-create
InstanceOf: NoDomainVitalSignsObservationBloodpressure
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
* extension[0].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBloodpressureBodyPosition"
* extension[=].valueCoding.code = #4801000202104 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Liggende"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationCuffSize"
* extension[=].valueCoding.code = #720740000 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Lår voksne"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationSleepStatus"
* extension[=].valueCoding.code = #248218005
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Våken"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationTilt"
* extension[=].valueQuantity.value = 14
* extension[=].valueQuantity.unit = "deg"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBloodpressureSystolicFormula"
* extension[=].valueString = "sample formula 1"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBloodpressureDiastolicFormula"
* extension[=].valueString = "sample formula 2"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBloodpressureMeanArterialFormula"
* extension[=].valueString = "sample formula 3"
* status = #final
* code = $loinc#85354-9 
* code.text = "BP pnl w all optional"

//* category = $observation-category#vital-signs "Vital Signs"
* subject = Reference(Patient/cdp1000808)
* subject.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* subject.identifier.value = "1000808"

* effectiveDateTime = "2021-05-10"
* performer[0] = Reference(PractitionerRole/agb104)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.51.1"
* performer[=].identifier.value = "104"
* performer[+] = Reference(Organization/afa23)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "23"
* note.text = "Demo Blood Pressure"
* bodySite.coding = $sct#7569003 "Finger"
//* method = $sct#129436005 "Auscultation - action (qualifier value)"
* component[SystolicBP].code.coding[SBPCode] = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code.coding[SystolicSnomed] = $sct#4471000202106 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 123 'mm[Hg]' "mm[Hg]"
* component[SystolicBP].referenceRange.low.value = 120  
* component[SystolicBP].referenceRange.low.unit = "mm[Hg]"  
* component[SystolicBP].referenceRange.high.value = 139  
* component[SystolicBP].referenceRange.high.unit = "mm[Hg]"  
* component[DiastolicBP].code.coding[DBPCode] = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[DiastolicBPSnomed] = $sct#4481000202108 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 78 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].referenceRange.low.value = 60  
* component[DiastolicBP].referenceRange.low.unit = "mm[Hg]"  
* component[DiastolicBP].referenceRange.high.value = 89  
* component[DiastolicBP].referenceRange.high.unit = "mm[Hg]"
* component[MeanArterialPressure].code.coding[MAPCode] = $loinc#8478-0 "BP mean"
* component[MeanArterialPressure].code.coding[MAPSnomedCode] = $sct#4491000202105 "Mean arterial pressure (observable entity)"
* component[MeanArterialPressure].valueQuantity = 93 'mm[Hg]' "mm[Hg]"
* component[MeanArterialPressure].referenceRange.low.value = 60  
* component[MeanArterialPressure].referenceRange.low.unit = "mm[Hg]"  
* component[MeanArterialPressure].referenceRange.high.value = 100  
* component[MeanArterialPressure].referenceRange.high.unit = "mm[Hg]"