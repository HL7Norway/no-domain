# no-domain-VitalSigns-Observation-bodyheight Profile - v0.9.71

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-domain-VitalSigns-Observation-bodyheight Profile**

## Resource Profile: no-domain-VitalSigns-Observation-bodyheight Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodyheight | *Version*:0.9.71 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsObservationBodyHeight |
| **Copyright/Legal**: Some content in this profile builds on the body height archetype: Høyde/Lengde, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2274 | |

 
Domain profile for Norwegian Vital Signs Observation Body Height information.
 To be used for recording the measured height or body length of an individual at any point in time. It represents the individual's height or length measured from the crown of the head to the sole of the foot. 

 
To record the length of the body from crown of head to sole of foot of an individual - either measured or approximated, and either in a standing or recumbent position. 

**Usages:**

* Examples for this Profile: [Observation/no-body-height-create](Observation-no-body-height-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/no-domain-VitalSigns-Observation-bodyheight)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-domain-VitalSigns-Observation-bodyheight.csv), [Excel](StructureDefinition-no-domain-VitalSigns-Observation-bodyheight.xlsx), [Schematron](StructureDefinition-no-domain-VitalSigns-Observation-bodyheight.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-domain-VitalSigns-Observation-bodyheight",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodyheight",
  "version" : "0.9.71",
  "name" : "NoDomainVitalSignsObservationBodyHeight",
  "title" : "no-domain-VitalSigns-Observation-bodyheight Profile",
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
  "description" : "Domain profile for Norwegian Vital Signs Observation Body Height information.  \nTo be used for recording the measured height or body length of an individual at any point in time. It represents the individual's height or length measured from the crown of the head to the sole of the foot. ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "purpose" : "To record the length of the body from crown of head to sole of foot of an individual - either measured or approximated, and either in a standing or recumbent position.",
  "copyright" : "Some content in this profile builds on the body height archetype: Høyde/Lengde, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2274",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bodyheight",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.extension:bodyPosition",
      "path" : "Observation.extension",
      "sliceName" : "bodyPosition",
      "short" : "Position of individual when measured.",
      "definition" : "Position of individual when measured.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBodyHeightBodyPositionExtension"]
      }]
    },
    {
      "id" : "Observation.extension:confoundingFactor",
      "path" : "Observation.extension",
      "sliceName" : "confoundingFactor",
      "definition" : "Narrative description of any issues or factors that may impact on measurment eg: Noting of amputation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension"]
      }]
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1
    },
    {
      "id" : "Observation.code.coding:BodyHeightSnomedCode",
      "path" : "Observation.code.coding",
      "sliceName" : "BodyHeightSnomedCode",
      "short" : "body Height Snomed Code",
      "definition" : "body Height Snomed Code",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.code.coding:BodyHeightSnomedCode.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.code.coding:BodyHeightSnomedCode.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "patternCode" : "1153637007"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.no/fhir/StructureDefinition/no-basis-Patient"]
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "type"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.performer:Author",
      "path" : "Observation.performer",
      "sliceName" : "Author",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/CareTeam",
        "http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.no/fhir/StructureDefinition/no-basis-Practitioner",
        "http://hl7.no/fhir/StructureDefinition/no-basis-PractitionerRole"]
      }]
    },
    {
      "id" : "Observation.performer:organization",
      "path" : "Observation.performer",
      "sliceName" : "organization",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.no/fhir/StructureDefinition/no-basis-Organization"]
      }]
    }]
  }
}

```
