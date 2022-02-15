Instance: vkp-blood-pressure-create
InstanceOf: Observation
Usage: #example
* meta.lastUpdated = "2021-02-15T22:35:23+11:00"
* meta.versionId = "1"
* meta.source = "META_VISION"
* identifier.system = "http://dips.no/fhir/namingsystem/externalId"
* identifier.value = "External Id: testBPexternalId1"
* status = #final
* code = $loinc#85354-9 "Blood pressure (observable entity)"
* category = $observation-category#vital-signs "vital-signs"
* subject.identifier.system = "http://dips.no/fhir/namingsystem/dips-patientid"
* subject.identifier.value = "1000807"
* encounter.identifier.system = "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid"
* encounter.identifier.value = "1002679"
* effectiveDateTime = "2021-05-10"
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.51.1"
* performer[=].identifier.value = "103"
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "22"
* note.text = "Demo Blood Pressure"
* bodySite = $sct#7569003 "Finger structure (body structure)"
* method = $sct#129436005 "Auscultation - action (qualifier value)"
* component[0].code.coding[0] = $loinc#8480-6 "Systolic blood pressure"
* component[=].code.coding[+] = $clinical-codes#bp-s "Systolic Blood pressure"
* component[=].valueQuantity = 123 'mm[Hg]' "mm[Hg]"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 78 'mm[Hg]' "mm[Hg]"
* component[+].code = $loinc#8478-0 "Mean arterial pressure (observable entity)"
* component[=].valueQuantity = 93 'mm[Hg]' "mm[Hg]"
* component[+].code = $sct#4461000202102 "The difference between the systolic and diastolic pressure."
* component[=].valueQuantity = 45 'mm[Hg]' "mm[Hg]"