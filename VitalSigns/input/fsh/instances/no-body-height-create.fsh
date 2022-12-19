Instance: no-body-height-create
InstanceOf: NoDomainVitalSignsObservationBodyHeight
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.source = "META_VISION"
* extension.url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBodyHeightBodyPosition"
* extension[=].valueCoding.code = #10904000 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Stående"
* status = #final
* category = $observation-category#vital-signs "vital-signs"
* code = $loinc#8302-2 "Body height measure (observable entity)"
* subject.identifier.system = "http://dips.no/fhir/namingsystem/dips-patientid"
* subject.identifier.value = "1000807"
* encounter = Reference(Encounter/agy1002679)
* encounter.identifier.system = "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid"
* encounter.identifier.value = "1002679"
* effectiveDateTime = "2021-05-10"
* performer[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* performer[=].identifier.value = "889911"
* performer[+] = Reference(Organization/afa22)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "22"
* note.text = "Demo Body Height"
* valueQuantity = 156 'cm' "cm"

