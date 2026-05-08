# NoDomainVitalSignsTilt-Extension - v0.9.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsTilt-Extension**

## Extension: NoDomainVitalSignsTilt-Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsTiltExtension | *Version*:0.9.2 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsTiltExtension |

The craniocaudal tilt of the surface on which the person is lying at the time of measurement.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-domain-VitalSigns-Observation-bloodpressure Profile](StructureDefinition-no-domain-VitalSigns-Observation-bloodpressure.md)
* Examples for this Extension: [Observation/no-blood-pressure-create](Observation-no-blood-pressure-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/NoDomainVitalSignsTiltExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoDomainVitalSignsTiltExtension.csv), [Excel](StructureDefinition-NoDomainVitalSignsTiltExtension.xlsx), [Schematron](StructureDefinition-NoDomainVitalSignsTiltExtension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoDomainVitalSignsTiltExtension",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsTiltExtension",
  "version" : "0.9.2",
  "name" : "NoDomainVitalSignsTiltExtension",
  "title" : "NoDomainVitalSignsTilt-Extension",
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
  "description" : "The craniocaudal tilt of the surface on which the person is lying at the time of measurement.",
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
      "fixedUri" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsTiltExtension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "head tilt in degrees",
      "definition" : "value range can be between -90 and +90",
      "type" : [{
        "code" : "Quantity"
      }],
      "minValueQuantity" : {
        "value" : -90,
        "unit" : "deg",
        "system" : "http://unitsofmeasure.org",
        "code" : "deg"
      },
      "maxValueQuantity" : {
        "value" : 90,
        "unit" : "deg",
        "system" : "http://unitsofmeasure.org",
        "code" : "deg"
      }
    },
    {
      "id" : "Extension.value[x].value",
      "path" : "Extension.value[x].value",
      "short" : "head tilt in degrees",
      "definition" : "value range can be between -90 and +90"
    },
    {
      "id" : "Extension.value[x].unit",
      "path" : "Extension.value[x].unit",
      "fixedString" : "deg"
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.value[x].code",
      "path" : "Extension.value[x].code",
      "patternCode" : "deg"
    }]
  }
}

```
