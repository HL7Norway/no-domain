# NoDomainVitalSignsFlow-Extension - v0.9.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsFlow-Extension**

## Extension: NoDomainVitalSignsFlow-Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFlowExtension | *Version*:0.9.6 |
| Draft as of 2025-10-09 | *Computable Name*:NoDomainVitalSignsFlowExtension |

Oxygen flow rate given to an individual.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NoDomainVitalSignsInspiredOxygen-Extension](StructureDefinition-NoDomainVitalSignsInspiredOxygenExtension.md)
* Examples for this Extension: [Observation/no-oxygen-saturation-create](Observation-no-oxygen-saturation-create.md) and [Observation/no-respiratory-rate-create](Observation-no-respiratory-rate-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/NoDomainVitalSignsFlowExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoDomainVitalSignsFlowExtension.csv), [Excel](StructureDefinition-NoDomainVitalSignsFlowExtension.xlsx), [Schematron](StructureDefinition-NoDomainVitalSignsFlowExtension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoDomainVitalSignsFlowExtension",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFlowExtension",
  "version" : "0.9.6",
  "name" : "NoDomainVitalSignsFlowExtension",
  "title" : "NoDomainVitalSignsFlow-Extension",
  "status" : "draft",
  "date" : "2025-10-09T19:07:52+00:00",
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
  "description" : "Oxygen flow rate given to an individual.",
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
      "expression" : "Element"
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
        "fixedUri" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFlowExtension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```
