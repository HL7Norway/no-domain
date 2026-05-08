# NoDomainVitalSignsHeartRatePulseBodyPosition-Extension - v0.9.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsHeartRatePulseBodyPosition-Extension**

## Extension: NoDomainVitalSignsHeartRatePulseBodyPosition-Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsHeartRatePulseBodyPositionExtension | *Version*:0.9.2 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsHeartRatePulseBodyPositionExtension |

Record which Korotkoff sound is used for determining diastolic pressure using auscultative method.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-domain-VitalSigns-Observation-heartrate Profile](StructureDefinition-no-domain-VitalSigns-Observation-heartrate.md) and [no-domain-VitalSigns-Observation-pulse Profile](StructureDefinition-no-domain-VitalSigns-Observation-pulse.md)
* Examples for this Extension: [Observation/no-heart-rate-create](Observation-no-heart-rate-create.md) and [Observation/no-pulse-rate](Observation-no-pulse-rate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/NoDomainVitalSignsHeartRatePulseBodyPositionExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoDomainVitalSignsHeartRatePulseBodyPositionExtension.csv), [Excel](StructureDefinition-NoDomainVitalSignsHeartRatePulseBodyPositionExtension.xlsx), [Schematron](StructureDefinition-NoDomainVitalSignsHeartRatePulseBodyPositionExtension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoDomainVitalSignsHeartRatePulseBodyPositionExtension",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsHeartRatePulseBodyPositionExtension",
  "version" : "0.9.2",
  "name" : "NoDomainVitalSignsHeartRatePulseBodyPositionExtension",
  "title" : "NoDomainVitalSignsHeartRatePulseBodyPosition-Extension",
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
  "description" : "Record which Korotkoff sound is used for determining diastolic pressure using auscultative method.",
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
    "type" : "fhirpath",
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
      "fixedUri" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsHeartRatePulseBodyPositionExtension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsHeartRatePulseBodyPositionValueSet"
      }
    }]
  }
}

```
