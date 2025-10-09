# NoDomainVitalSignsDaysSinceMenstruationStart-Extension - v0.9.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsDaysSinceMenstruationStart-Extension**

## Extension: NoDomainVitalSignsDaysSinceMenstruationStart-Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsDaysSinceMenstruationStartExtension | *Version*:0.9.5 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsDaysSinceMenstruationStartExtension |

Current day of the menstrual cycle.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-domain-VitalSigns-Observation-bodytemp Profile](StructureDefinition-no-domain-VitalSigns-Observation-bodytemp.md)
* Examples for this Extension: [Observation/no-body-temperature-create](Observation-no-body-temperature-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/NoDomainVitalSignsDaysSinceMenstruationStartExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoDomainVitalSignsDaysSinceMenstruationStartExtension.csv), [Excel](StructureDefinition-NoDomainVitalSignsDaysSinceMenstruationStartExtension.xlsx), [Schematron](StructureDefinition-NoDomainVitalSignsDaysSinceMenstruationStartExtension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoDomainVitalSignsDaysSinceMenstruationStartExtension",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsDaysSinceMenstruationStartExtension",
  "version" : "0.9.5",
  "name" : "NoDomainVitalSignsDaysSinceMenstruationStartExtension",
  "title" : "NoDomainVitalSignsDaysSinceMenstruationStart-Extension",
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
  "description" : "Current day of the menstrual cycle.",
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
        "fixedUri" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsDaysSinceMenstruationStartExtension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "positiveInt"
          }
        ]
      }
    ]
  }
}

```
