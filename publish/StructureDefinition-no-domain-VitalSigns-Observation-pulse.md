# no-domain-VitalSigns-Observation-pulse Profile - v0.9.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-domain-VitalSigns-Observation-pulse Profile**

## Resource Profile: no-domain-VitalSigns-Observation-pulse Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-pulse | *Version*:0.9.2 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsObservationPulse |
| **Copyright/Legal**: Some content in this profile builds on the heart rate archetype: Puls/Hjertefrekvens, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2293 | |

 
Domain profile for Norwegian Vital Signs Observation Pulse information. To be used for recording the number of times your arteries create a noticeable pulse due to increase in blood pressure. This profile describes how to use a SNOMED code to indicate that the measurement is actually a pulse measurement at systemic artery, and not a general heart rate measurement that can be measured both as pulse and the actual heart beat. 

 
Basisprofile for Norwegian VitalSigns Observation pulse information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Pulse. 

**Usages:**

* Examples for this Profile: [Observation/no-pulse-rate](Observation-no-pulse-rate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/no-domain-VitalSigns-Observation-pulse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-domain-VitalSigns-Observation-pulse.csv), [Excel](StructureDefinition-no-domain-VitalSigns-Observation-pulse.xlsx), [Schematron](StructureDefinition-no-domain-VitalSigns-Observation-pulse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-domain-VitalSigns-Observation-pulse",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-pulse",
  "version" : "0.9.2",
  "name" : "NoDomainVitalSignsObservationPulse",
  "title" : "no-domain-VitalSigns-Observation-pulse Profile",
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
  "description" : "Domain profile for Norwegian Vital Signs Observation Pulse information. To be used for recording the number of times your arteries create a noticeable pulse due to increase in blood pressure. This profile describes how to use a SNOMED code to indicate that the measurement is actually a pulse measurement at systemic artery, and not a general heart rate measurement that can be measured both as pulse and the actual heart beat.",
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
  "purpose" : "Basisprofile for Norwegian  VitalSigns Observation pulse information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Pulse.",
  "copyright" : "Some content in this profile builds on the heart rate archetype: Puls/Hjertefrekvens, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2293",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/heartrate",
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
        "id" : "Observation.extension:pulseRhythm",
        "path" : "Observation.extension",
        "sliceName" : "pulseRhythm",
        "short" : "Regularity of the pulse",
        "definition" : "Regularity of the pulse",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPulseRhythmExtension"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:confoundingFactor",
        "path" : "Observation.extension",
        "sliceName" : "confoundingFactor",
        "short" : "Additional issues or factors that may impact for the measurement",
        "definition" : "Narrative description about any incidental factors that may affect interpretation of the physical findings.\nComment: For example, presence of a pacemaker, level of anxiety; pain or fever etc.",
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
        "id" : "Observation.extension:clinicalDescription",
        "path" : "Observation.extension",
        "sliceName" : "clinicalDescription",
        "short" : "Narrative description about the pulse",
        "definition" : "Narrative description about the pulse",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsClinicalDescriptionExtension"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:characterOfPulse",
        "path" : "Observation.extension",
        "sliceName" : "characterOfPulse",
        "short" : "Description of the character of the pulse",
        "definition" : "Description of the character of the pulse",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsCharacterOfPulseExtension"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:BodyPosition",
        "path" : "Observation.extension",
        "sliceName" : "BodyPosition",
        "short" : "The body position of the subject during the observation.",
        "definition" : "The body position of the subject during the observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsHeartRatePulseBodyPositionExtension"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:pulseRythmIrregularity",
        "path" : "Observation.extension",
        "sliceName" : "pulseRythmIrregularity",
        "short" : "More specific pattern of an irregular pulse",
        "definition" : "More specific pattern of an irregular pulse",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPulseRhythmIrregularityExtension"
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
        "id" : "Observation.code.coding:PulseSNOMEDCode",
        "path" : "Observation.code.coding",
        "sliceName" : "PulseSNOMEDCode",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.code.coding:PulseSNOMEDCode.system",
        "path" : "Observation.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://snomed.info/sct"
      },
      {
        "id" : "Observation.code.coding:PulseSNOMEDCode.code",
        "path" : "Observation.code.coding.code",
        "min" : 1,
        "fixedCode" : "78564009"
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
        "short" : "The rate of the pulse, measured in beats per minute.",
        "definition" : "The rate of the pulse , measured in beats per minute.",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsPulseBodySiteValueSet"
        }
      },
      {
        "id" : "Observation.bodySite.coding",
        "path" : "Observation.bodySite.coding",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsPulseBodySiteValueSet"
        }
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsPulseMeasurementMethodValueSet"
        }
      },
      {
        "id" : "Observation.method.coding",
        "path" : "Observation.method.coding",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsPulseMeasurementMethodValueSet"
        }
      }
    ]
  }
}

```
