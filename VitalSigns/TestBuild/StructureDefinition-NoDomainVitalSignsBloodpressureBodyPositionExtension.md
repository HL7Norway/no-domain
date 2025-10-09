# NoDomainVitalSignsBloodpressureBodyPosition-Extension - v0.9.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsBloodpressureBodyPosition-Extension**

## Extension: NoDomainVitalSignsBloodpressureBodyPosition-Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureBodyPositionExtension | *Version*:0.9.5 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsBloodpressureBodyPositionExtension |

The position of the individual at the time of measurement.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-domain-VitalSigns-Observation-bloodpressure Profile](StructureDefinition-no-domain-VitalSigns-Observation-bloodpressure.md)
* Examples for this Extension: [Observation/no-blood-pressure-create](Observation-no-blood-pressure-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/NoDomainVitalSignsBloodpressureBodyPositionExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoDomainVitalSignsBloodpressureBodyPositionExtension.csv), [Excel](StructureDefinition-NoDomainVitalSignsBloodpressureBodyPositionExtension.xlsx), [Schematron](StructureDefinition-NoDomainVitalSignsBloodpressureBodyPositionExtension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoDomainVitalSignsBloodpressureBodyPositionExtension",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureBodyPositionExtension",
  "version" : "0.9.5",
  "name" : "NoDomainVitalSignsBloodpressureBodyPositionExtension",
  "title" : "NoDomainVitalSignsBloodpressureBodyPosition-Extension",
  "status" : "draft",
  "date" : "2025-01-28",
  "publisher" : "HL7 Norway",
  "contact" : [
    {
      "name" : "HL7 Norway",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.no"
        }
      ]
    }
  ],
  "description" : "The position of the individual at the time of measurement.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "NO",
          "display" : "Norway"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Observation"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureBodyPositionExtension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBloodpressureBodyPositionValueSet"
        }
      }
    ]
  }
}

```
