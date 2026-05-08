# NoDomainVitalSignsConfoundingFactor-Extension - v0.9.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsConfoundingFactor-Extension**

## Extension: NoDomainVitalSignsConfoundingFactor-Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension | *Version*:0.9.2 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsConfoundingFactorExtension |

Confounding factor is Issues or factors that may impact on , not captured in other fields

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-domain-VitalSigns-Observation-bloodpressure Profile](StructureDefinition-no-domain-VitalSigns-Observation-bloodpressure.md), [no-domain-VitalSigns-Observation-bodyheight Profile](StructureDefinition-no-domain-VitalSigns-Observation-bodyheight.md), [no-domain-VitalSigns-Observation-bodytemp Profile](StructureDefinition-no-domain-VitalSigns-Observation-bodytemp.md), [no-domain-VitalSigns-Observation-bodyweight Profile](StructureDefinition-no-domain-VitalSigns-Observation-bodyweight.md)... Show 4 more, [no-domain-VitalSigns-Observation-heartrate Profile](StructureDefinition-no-domain-VitalSigns-Observation-heartrate.md), [no-domain-VitalSigns-Observation-oxygensaturation Profile](StructureDefinition-no-domain-VitalSigns-Observation-oxygensaturation.md), [no-domain-VitalSigns-Observation-pulse Profile](StructureDefinition-no-domain-VitalSigns-Observation-pulse.md) and [no-domain-VitalSigns-Observation-respirationrate Profile](StructureDefinition-no-domain-VitalSigns-Observation-respirationrate.md)
* Examples for this Extension: [Observation/no-body-height-create](Observation-no-body-height-create.md), [Observation/no-body-weight-create](Observation-no-body-weight-create.md), [Observation/no-heart-rate-create](Observation-no-heart-rate-create.md), [Observation/no-oxygen-saturation-create](Observation-no-oxygen-saturation-create.md)... Show 2 more, [Observation/no-pulse-rate](Observation-no-pulse-rate.md) and [Observation/no-respiratory-rate-create](Observation-no-respiratory-rate-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoDomainVitalSignsConfoundingFactorExtension.csv), [Excel](StructureDefinition-NoDomainVitalSignsConfoundingFactorExtension.xlsx), [Schematron](StructureDefinition-NoDomainVitalSignsConfoundingFactorExtension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoDomainVitalSignsConfoundingFactorExtension",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension",
  "version" : "0.9.2",
  "name" : "NoDomainVitalSignsConfoundingFactorExtension",
  "title" : "NoDomainVitalSignsConfoundingFactor-Extension",
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
  "description" : "Confounding factor is Issues or factors that may impact on <the measurement>, not captured in other fields",
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
      "fixedUri" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
