# no-body-temperature-create - v0.9.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-body-temperature-create**

## Example Observation: no-body-temperature-create

version: 0; Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [HL7_Norway](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.0&canonical=http://fhir.org/packages/hl7.fhir.no.basis/HL7_Norway)

Profile: [no-domain-VitalSigns-Observation-bodytemp Profile](StructureDefinition-no-domain-VitalSigns-Observation-bodytemp.md)

**NoDomainVitalSignsBodyExposure-Extension**: [SNOMED CT: 5671000202107](http://snomed.info/id/5671000202107) (Naken)

**NoDomainVitalSignsActiveHeating-Extension**: active heating sample

**NoDomainVitalSignsDaysSinceMenstruationStart-Extension**: 12

**status**: Final

**category**: Vital Signs

**code**: Body temperature

**subject**: Identifier: Foedselsnummer/1000239

**effective**: 2021-05-10

**performer**: 

* Identifier: `urn:oid:2.16.578.1.12.4.1.2`/889911
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#23](Organization-afa23.md)

**value**: 37 Cel (Details: UCUM codeCel = 'Cel')

**note**: 

> 

Demo Body Temperature


**bodySite**: Endetarm



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "no-body-temperature-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "HL7_Norway",
    "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodytemp"]
  },
  "extension" : [{
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBodyExposureExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "5671000202107",
      "display" : "Naken"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsActiveHeatingExtension",
    "valueString" : "active heating sample"
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsDaysSinceMenstruationStartExtension",
    "valuePositiveInt" : 12
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8310-5",
      "display" : "Body temperature"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "276885007",
      "display" : "Core body temperature (observable entity)"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "1000239"
    }
  },
  "effectiveDateTime" : "2021-05-10",
  "performer" : [{
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.2",
      "value" : "889911"
    }
  },
  {
    "reference" : "Organization/afa23",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.70.3",
      "value" : "23"
    }
  }],
  "valueQuantity" : {
    "value" : 37,
    "unit" : "Cel",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  },
  "note" : [{
    "text" : "Demo Body Temperature"
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "34402009",
      "display" : "Endetarm"
    }]
  }
}

```
