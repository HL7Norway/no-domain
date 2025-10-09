# no-body-height-create - v0.9.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-body-height-create**

## Example Observation: no-body-height-create

Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [HL7_Norway](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/HL7_Norway)

Profile: [no-domain-VitalSigns-Observation-bodyheight Profile](StructureDefinition-no-domain-VitalSigns-Observation-bodyheight.md)

**NoDomainVitalSignsBodyHeightBodyPosition-Extension**: [SNOMED CT 10904000](http://snomed.info/id/10904000): Stående

**NoDomainVitalSignsConfoundingFactor-Extension**: sample confounding factor

**status**: Final

**category**: Vital Signs

**code**: Body height

**subject**: Identifier: `urn:oid:2.16.578.1.12.4.1.4.1`/1000807

**effective**: 2021-05-10

**performer**: 

* Identifier: `urn:oid:2.16.578.1.12.4.1.2`/889911
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#23](Organization-afa23.md)

**value**: 156 cm(Details: UCUM codecm = 'cm')

**note**: 

> 

Demo Body Height




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "no-body-height-create",
  "meta" : {
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "HL7_Norway",
    "profile" : [
      "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodyheight"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBodyHeightBodyPositionExtension",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "10904000",
        "display" : "Stående"
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension",
      "valueCodeableConcept" : {
        "text" : "sample confounding factor"
      }
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "8302-2",
        "display" : "Body height"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "1153637007",
        "display" : "Body height"
      }
    ]
  },
  "subject" : {
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "1000807"
    }
  },
  "effectiveDateTime" : "2021-05-10",
  "performer" : [
    {
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
    }
  ],
  "valueQuantity" : {
    "value" : 156,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  },
  "note" : [
    {
      "text" : "Demo Body Height"
    }
  ]
}

```
