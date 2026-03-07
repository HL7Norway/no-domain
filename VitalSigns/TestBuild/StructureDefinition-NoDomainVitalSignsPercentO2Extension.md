# NoDomainVitalSignsPercentO2-Extension - v0.9.72

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsPercentO2-Extension**

## Extension: NoDomainVitalSignsPercentO2-Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPercentO2Extension | *Version*:0.9.72 |
| Draft as of 2026-03-07 | *Computable Name*:NoDomainVitalSignsPercentO2Extension |

Percentage of oxygen in inspired air.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NoDomainVitalSignsInspiredOxygen-Extension](StructureDefinition-NoDomainVitalSignsInspiredOxygenExtension.md)
* Examples for this Extension: [Observation/no-oxygen-saturation-create](Observation-no-oxygen-saturation-create.md) and [Observation/no-respiratory-rate-create](Observation-no-respiratory-rate-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/NoDomainVitalSignsPercentO2Extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoDomainVitalSignsPercentO2Extension.csv), [Excel](StructureDefinition-NoDomainVitalSignsPercentO2Extension.xlsx), [Schematron](StructureDefinition-NoDomainVitalSignsPercentO2Extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoDomainVitalSignsPercentO2Extension",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPercentO2Extension",
  "version" : "0.9.72",
  "name" : "NoDomainVitalSignsPercentO2Extension",
  "title" : "NoDomainVitalSignsPercentO2-Extension",
  "status" : "draft",
  "date" : "2026-03-07T09:02:29+00:00",
  "publisher" : "HL7 Norway",
  "contact" : [{
    "name" : "HL7 Norway",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.no"
    }]
  }],
  "description" : "Percentage of oxygen in inspired air.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPercentO2Extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Ratio"
      }]
    }]
  }
}

```
