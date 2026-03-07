# no-domain-VitalSigns-Observation-bodytemp Profile - v0.9.74

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-domain-VitalSigns-Observation-bodytemp Profile**

## Resource Profile: no-domain-VitalSigns-Observation-bodytemp Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodytemp | *Version*:0.9.74 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsObservationBodyTemp |
| **Copyright/Legal**: Some content in this profile builds on the body temperature archetype: Kroppstemperatur, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.1855 | |

 
Domain profile for Norwegian Vital Signs Observation Body Temperature information. To be used for recording the measurement of an individual's body temperature. which is a surrogate for the core body temperature of the individual. 

 
Basisprofile for Norwegian VitalSigns Observation Body Temperature information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Body Temperature. 

**Usages:**

* Examples for this Profile: [Observation/no-body-temperature-create](Observation-no-body-temperature-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/no-domain-VitalSigns-Observation-bodytemp)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-domain-VitalSigns-Observation-bodytemp.csv), [Excel](StructureDefinition-no-domain-VitalSigns-Observation-bodytemp.xlsx), [Schematron](StructureDefinition-no-domain-VitalSigns-Observation-bodytemp.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-domain-VitalSigns-Observation-bodytemp",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodytemp",
  "version" : "0.9.74",
  "name" : "NoDomainVitalSignsObservationBodyTemp",
  "title" : "no-domain-VitalSigns-Observation-bodytemp Profile",
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
  "description" : "Domain profile for Norwegian Vital Signs Observation Body Temperature information. To be used for recording the measurement of an individual's body temperature. which is a surrogate for the core body temperature of the individual.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "purpose" : "Basisprofile for Norwegian  VitalSigns Observation Body Temperature information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Body Temperature.",
  "copyright" : "Some content in this profile builds on the body temperature archetype: Kroppstemperatur, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.1855",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bodytemp",
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
      "id" : "Observation.extension:confoundingFactor",
      "path" : "Observation.extension",
      "sliceName" : "confoundingFactor",
      "short" : "Additional issues or factors that may impact for the measurement",
      "definition" : "Additional issues or factors that may impact on the measurement of body temperature, not captured in other fields.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension"]
      }]
    },
    {
      "id" : "Observation.extension:daysSinceMenstruationStart",
      "path" : "Observation.extension",
      "sliceName" : "daysSinceMenstruationStart",
      "short" : "Current day of the menstrual cycle.",
      "definition" : "Current day of the menstrual cycle.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsDaysSinceMenstruationStartExtension"]
      }]
    },
    {
      "id" : "Observation.extension:bodyExposure",
      "path" : "Observation.extension",
      "sliceName" : "bodyExposure",
      "short" : "The degree of exposure of the individual at the time of measurement.",
      "definition" : "The degree of exposure of the individual at the time of measurement.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBodyExposureExtension"]
      }]
    },
    {
      "id" : "Observation.extension:activeHeating",
      "path" : "Observation.extension",
      "sliceName" : "activeHeating",
      "short" : "description of the conditions applied",
      "definition" : "Narrative description of the conditions applied to the subject that might influence their measured body temperature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsActiveHeatingExtension"]
      }]
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1
    },
    {
      "id" : "Observation.code.coding:BodyTempSnomedCode",
      "path" : "Observation.code.coding",
      "sliceName" : "BodyTempSnomedCode",
      "short" : "body Height Snomed Code",
      "definition" : "body Height Snomed Code",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.code.coding:BodyTempSnomedCode.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.code.coding:BodyTempSnomedCode.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "patternCode" : "276885007"
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
    },
    {
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "The measured temperature.",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBodyTempBodySiteValueSet"
      }
    },
    {
      "id" : "Observation.bodySite.coding",
      "path" : "Observation.bodySite.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBodyTempBodySiteValueSet"
      }
    },
    {
      "id" : "Observation.bodySite.coding.system",
      "path" : "Observation.bodySite.coding.system",
      "min" : 1
    },
    {
      "id" : "Observation.bodySite.coding.code",
      "path" : "Observation.bodySite.coding.code",
      "min" : 1
    }]
  }
}

```
