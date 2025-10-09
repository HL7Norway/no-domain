# no-domain-VitalSigns-Observation-bodyweight Profile - v0.9.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-domain-VitalSigns-Observation-bodyweight Profile**

## Resource Profile: no-domain-VitalSigns-Observation-bodyweight Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodyweight | *Version*:0.9.5 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsObservationBodyWeight |
| **Copyright/Legal**: Some content in this profile builds on the body weight archetype: Kroppsvekt, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2273 | |

 
Domain profile for Norwegian Vital Signs Observation Body Weight information. To be used for recording the actual measurement of body weight, including when the individual is missing a body part due to a congenital cause or after surgical removal. 

 
To record the body weight of an individual - both actual and approximate. 

**Usages:**

* Examples for this Profile: [Observation/no-body-weight-create](Observation-no-body-weight-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/no-domain-VitalSigns-Observation-bodyweight)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-domain-VitalSigns-Observation-bodyweight.csv), [Excel](StructureDefinition-no-domain-VitalSigns-Observation-bodyweight.xlsx), [Schematron](StructureDefinition-no-domain-VitalSigns-Observation-bodyweight.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-domain-VitalSigns-Observation-bodyweight",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodyweight",
  "version" : "0.9.5",
  "name" : "NoDomainVitalSignsObservationBodyWeight",
  "title" : "no-domain-VitalSigns-Observation-bodyweight Profile",
  "status" : "draft",
  "date" : "2025-01-28",
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
  "description" : "Domain profile for Norwegian Vital Signs Observation Body Weight information. To be used for recording the actual measurement of body weight, including when the individual is missing a body part due to a congenital cause or after surgical removal.",
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
  "purpose" : "To record the body weight of an individual - both actual and approximate.",
  "copyright" : "Some content in this profile builds on the body weight archetype: Kroppsvekt, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2273",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bodyweight",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.extension:clothingState",
        "path" : "Observation.extension",
        "sliceName" : "clothingState",
        "short" : "Description of the state of dress of the person at the time of weighing.",
        "definition" : "Description of the state of dress of the person at the time of weighing.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsClothingStateExtension"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:confoundingFactor",
        "path" : "Observation.extension",
        "sliceName" : "confoundingFactor",
        "short" : "Additional issues or factors that may impact for the measurement",
        "definition" : "Record any issues or factors that may impact on the measurement of body weight eg timing in menstrual cycle, timing of recent bowel motion or noting of amputation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension"
            ]
          }
        ]
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "min" : 1
      },
      {
        "id" : "Observation.code.coding:BodyWeightSnomedCode",
        "path" : "Observation.code.coding",
        "sliceName" : "BodyWeightSnomedCode",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.code.coding:BodyWeightSnomedCode.system",
        "path" : "Observation.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://snomed.info/sct"
      },
      {
        "id" : "Observation.code.coding:BodyWeightSnomedCode.code",
        "path" : "Observation.code.coding.code",
        "min" : 1,
        "fixedCode" : "27113001"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.no/fhir/StructureDefinition/no-basis-Patient"
            ]
          }
        ]
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "type"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.performer:Author",
        "path" : "Observation.performer",
        "sliceName" : "Author",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.no/fhir/StructureDefinition/no-basis-Practitioner",
              "http://hl7.no/fhir/StructureDefinition/no-basis-PractitionerRole"
            ]
          }
        ]
      },
      {
        "id" : "Observation.performer:organization",
        "path" : "Observation.performer",
        "sliceName" : "organization",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Organization",
              "http://hl7.no/fhir/StructureDefinition/no-basis-Organization"
            ]
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.value[x]:valueQuantity",
        "path" : "Observation.value[x]",
        "sliceName" : "valueQuantity",
        "short" : "The weight of the individual.",
        "definition" : "The weight of the individual.",
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
