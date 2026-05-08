# NoDomainVitalSignsFiO2-Extension - v0.9.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsFiO2-Extension**

## Extension: NoDomainVitalSignsFiO2-Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFiO2Extension | *Version*:0.9.2 |
| Draft as of 2026-05-08 | *Computable Name*:NoDomainVitalSignsFiO2Extension |

Fraction of oxygen in inspired air.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NoDomainVitalSignsInspiredOxygen-Extension](StructureDefinition-NoDomainVitalSignsInspiredOxygenExtension.md)
* Examples for this Extension: [Observation/no-oxygen-saturation-create](Observation-no-oxygen-saturation-create.md) and [Observation/no-respiratory-rate-create](Observation-no-respiratory-rate-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/NoDomainVitalSignsFiO2Extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoDomainVitalSignsFiO2Extension.csv), [Excel](StructureDefinition-NoDomainVitalSignsFiO2Extension.xlsx), [Schematron](StructureDefinition-NoDomainVitalSignsFiO2Extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoDomainVitalSignsFiO2Extension",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFiO2Extension",
  "version" : "0.9.2",
  "name" : "NoDomainVitalSignsFiO2Extension",
  "title" : "NoDomainVitalSignsFiO2-Extension",
  "status" : "draft",
  "date" : "2026-05-08T10:09:24+00:00",
  "publisher" : "HL7 Norway",
  "contact" : [{
    "name" : "HL7 Norway",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.no"
    }]
  }],
  "description" : "Fraction of oxygen in inspired air.",
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
      "fixedUri" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFiO2Extension"
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
