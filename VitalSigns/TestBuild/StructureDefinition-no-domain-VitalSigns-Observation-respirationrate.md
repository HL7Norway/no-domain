# no-domain-VitalSigns-Observation-respirationrate Profile - v0.9.74

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-domain-VitalSigns-Observation-respirationrate Profile**

## Resource Profile: no-domain-VitalSigns-Observation-respirationrate Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-respirationrate | *Version*:0.9.74 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsObservationRespirationRate |
| **Copyright/Legal**: Some content in this profile builds on the respiration rate archetype: Åndedrett, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2280 | |

 
Domain profile for Norwegian Vital Signs Observation Respiration Rate information.
 To be used for recording the observed and measured characteristics of spontaneous breathing by an individual, including respiratory rate, depth and rhythm. 

 
Basisprofile for Norwegian VitalSigns Observation Respiration Rate information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Respiration Rate . 

**Usages:**

* Examples for this Profile: [Observation/no-respiratory-rate-create](Observation-no-respiratory-rate-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/no-domain-VitalSigns-Observation-respirationrate)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-domain-VitalSigns-Observation-respirationrate.csv), [Excel](StructureDefinition-no-domain-VitalSigns-Observation-respirationrate.xlsx), [Schematron](StructureDefinition-no-domain-VitalSigns-Observation-respirationrate.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-domain-VitalSigns-Observation-respirationrate",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-respirationrate",
  "version" : "0.9.74",
  "name" : "NoDomainVitalSignsObservationRespirationRate",
  "title" : "no-domain-VitalSigns-Observation-respirationrate Profile",
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
  "description" : "Domain profile for Norwegian Vital Signs Observation Respiration Rate information.  \nTo be used for recording the observed and measured characteristics of spontaneous breathing by an individual, including respiratory rate, depth and rhythm.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "purpose" : "Basisprofile for Norwegian  VitalSigns Observation Respiration Rate information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Respiration Rate .",
  "copyright" : "Some content in this profile builds on the respiration rate archetype: Åndedrett, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2280",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/resprate",
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
      "short" : "The body position of the individual during the observation.",
      "definition" : "The body position of the individual during the observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsRespirationRateBodyPositionExtension"]
      }]
    },
    {
      "id" : "Observation.extension:respirationRegularity",
      "path" : "Observation.extension",
      "sliceName" : "respirationRegularity",
      "short" : "The regularity of spontaneous breathing.",
      "definition" : "The regularity of spontaneous breathing.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsRespirationRegularityExtension"]
      }]
    },
    {
      "id" : "Observation.extension:spontaneousBreathing",
      "path" : "Observation.extension",
      "sliceName" : "spontaneousBreathing",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsSpontaneousBreathingExtension"]
      }]
    },
    {
      "id" : "Observation.extension:clinicalDescription",
      "path" : "Observation.extension",
      "sliceName" : "clinicalDescription",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsClinicalDescriptionExtension"]
      }]
    },
    {
      "id" : "Observation.extension:respirationDepth",
      "path" : "Observation.extension",
      "sliceName" : "respirationDepth",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsRespirationDepthExtension"]
      }]
    },
    {
      "id" : "Observation.extension:inspiredOxygen",
      "path" : "Observation.extension",
      "sliceName" : "inspiredOxygen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension"]
      }]
    },
    {
      "id" : "Observation.extension:confoundingFactor",
      "path" : "Observation.extension",
      "sliceName" : "confoundingFactor",
      "short" : "Additional issues or factors that may impact for the measurement",
      "definition" : "Identification of any issues or incidental factors that may impact on interpretation of the observation.\nComment: For example: level of anxiety, pain, feeding in infants, tracheostomy.",
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
      "id" : "Observation.code.coding:ResRateSNOMEDCode",
      "path" : "Observation.code.coding",
      "sliceName" : "ResRateSNOMEDCode",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.code.coding:ResRateSNOMEDCode.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.code.coding:ResRateSNOMEDCode.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "fixedCode" : "271625008"
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
      "short" : "The frequency of spontaneous breathing.",
      "definition" : "The frequency of spontaneous breathing.",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
