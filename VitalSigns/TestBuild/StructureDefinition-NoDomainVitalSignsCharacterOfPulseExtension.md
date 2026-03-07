# NoDomainVitalSignsCharacterOfPulse-Extension - v0.9.71

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsCharacterOfPulse-Extension**

## Extension: NoDomainVitalSignsCharacterOfPulse-Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsCharacterOfPulseExtension | *Version*:0.9.71 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsCharacterOfPulseExtension |

Description of the character of the pulse.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-domain-VitalSigns-Observation-pulse Profile](StructureDefinition-no-domain-VitalSigns-Observation-pulse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/NoDomainVitalSignsCharacterOfPulseExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoDomainVitalSignsCharacterOfPulseExtension.csv), [Excel](StructureDefinition-NoDomainVitalSignsCharacterOfPulseExtension.xlsx), [Schematron](StructureDefinition-NoDomainVitalSignsCharacterOfPulseExtension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoDomainVitalSignsCharacterOfPulseExtension",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsCharacterOfPulseExtension",
  "version" : "0.9.71",
  "name" : "NoDomainVitalSignsCharacterOfPulseExtension",
  "title" : "NoDomainVitalSignsCharacterOfPulse-Extension",
  "status" : "draft",
  "date" : "2025-01-28",
  "publisher" : "HL7 Norway",
  "contact" : [{
    "name" : "HL7 Norway",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.no"
    }]
  }],
  "description" : "Description of the character of the pulse.",
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
    "expression" : "Observation"
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
      "fixedUri" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsCharacterOfPulseExtension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Annotation"
      }]
    }]
  }
}

```
