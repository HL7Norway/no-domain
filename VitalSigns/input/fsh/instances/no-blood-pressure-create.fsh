Instance: no-blood-pressure-create
InstanceOf: NoDomainVitalSignsObservationBloodpressure
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
* extension[0].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBloodpressureBodyPosition"
* extension[=].valueCoding.code = #33586001 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Sittende"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationCuffSize"
* extension[=].valueCoding.code = #720740000 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Lår voksne"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationDiastolicEndPoint"
* extension[=].valueCoding.code = #1081871000202109
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Fase IV"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationSleepStatus"
* extension[=].valueCoding.code = #248218005
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Våken"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeadTilt"
* extension[=].valueQuantity.value = 14
* extension[=].valueQuantity.unit = "deg"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBloodpressureSystolicFormula"
* extension[=].valueString = "sample formula 1"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBloodpressureDiastolicFormula"
* extension[=].valueString = "sample formula 2"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBloodpressureMeanArterialFormula"
* extension[=].valueString = "sample formula 3"
* status = #final
* code = $loinc#85354-9 "Blood pressure (observable entity)"
* category = $observation-category#vital-signs "vital-signs"
* subject = Reference(Patient/cdp1000807)
* subject.identifier.system = "http://dips.no/fhir/namingsystem/dips-patientid"
* subject.identifier.value = "1000807"
* encounter = Reference(Encounter/agy1002679)
* encounter.identifier.system = "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid"
* encounter.identifier.value = "1002679"
* effectiveDateTime = "2021-05-10"
* performer[0] = Reference(PractitionerRole/agb103)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.51.1"
* performer[=].identifier.value = "103"
* performer[+] = Reference(Organization/afa22)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "22"
* note.text = "Demo Blood Pressure"
* bodySite = $sct#7569003 "Finger structure (body structure)"
//* method = $sct#129436005 "Auscultation - action (qualifier value)"
* component[0].code.coding[0] = $loinc#8480-6 "Systolic blood pressure"
* component[=].code.coding[+] = $clinical-codes#bp-s "Systolic Blood pressure"
* component[=].valueQuantity = 123 'mm[Hg]' "mm[Hg]"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 78 'mm[Hg]' "mm[Hg]"
* component[+].code = $loinc#8478-0 "Mean arterial pressure (observable entity)"
* component[=].valueQuantity = 93 'mm[Hg]' "mm[Hg]"
* component[+].code = $sct#4461000202102 "Arterial pulse pressure"
* component[=].valueQuantity = 45 'mm[Hg]' "mm[Hg]"