# no-body-weight-create - v0.9.72

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-body-weight-create**

## Example Observation: no-body-weight-create

version: 0; Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [HL7_Norway](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/HL7_Norway)

Profile: [no-domain-VitalSigns-Observation-bodyweight Profile](StructureDefinition-no-domain-VitalSigns-Observation-bodyweight.md)

**NoDomainVitalSignsClothingState-Extension**: [SNOMED CT: 8101000202100](http://snomed.info/id/8101000202100) (Naken)

**NoDomainVitalSignsConfoundingFactor-Extension**: sample confounding factor

**status**: Final

**category**: Vital Signs

**code**: Body weight

**subject**: Identifier: `urn:oid:2.16.578.1.12.4.1.4.1`/1000807

**effective**: 2021-05-10

**performer**: 

* Identifier: `urn:oid:2.16.578.1.12.4.1.2`/889911
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#23](Organization-afa23.md)

**value**: 49000 g (Details: UCUM codeg = 'g')

**note**: 

> 

Demo Body Weight




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "no-body-weight-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "HL7_Norway",
    "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodyweight"]
  },
  "extension" : [{
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsClothingStateExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "8101000202100",
      "display" : "Naken"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension",
    "valueCodeableConcept" : {
      "text" : "sample confounding factor"
    }
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
      "code" : "29463-7",
      "display" : "Body weight"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "27113001",
      "display" : "Body weight (observable entity)"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "1000807"
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
    "value" : 49000,
    "unit" : "g",
    "system" : "http://unitsofmeasure.org",
    "code" : "g"
  },
  "note" : [{
    "text" : "Demo Body Weight"
  }]
}

```
