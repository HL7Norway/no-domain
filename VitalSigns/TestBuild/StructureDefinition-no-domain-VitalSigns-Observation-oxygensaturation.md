# no-domain-VitalSigns-Observation-oxygensaturation Profile - v0.9.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-domain-VitalSigns-Observation-oxygensaturation Profile**

## Resource Profile: no-domain-VitalSigns-Observation-oxygensaturation Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-oxygensaturation | *Version*:0.9.5 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsObservationOxygenSaturation |
| **Copyright/Legal**: Some content in this profile builds on the pulse oximetry archetype: Pulsoksymetri, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.53 | |

 
Domain profile for Norwegian Vital Signs Observation Oxygen Saturation information.
To be used for recording blood oxygen and related measurements, measured by pulse oximetry or pulse CO-oximetry. 

 
Basisprofile for Norwegian VitalSigns Observation Oxygen Saturation information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Oxygen Saturation. 

**Usages:**

* Examples for this Profile: [Observation/no-oxygen-saturation-create](Observation-no-oxygen-saturation-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/no-domain-VitalSigns-Observation-oxygensaturation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-domain-VitalSigns-Observation-oxygensaturation.csv), [Excel](StructureDefinition-no-domain-VitalSigns-Observation-oxygensaturation.xlsx), [Schematron](StructureDefinition-no-domain-VitalSigns-Observation-oxygensaturation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-domain-VitalSigns-Observation-oxygensaturation",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-oxygensaturation",
  "version" : "0.9.5",
  "name" : "NoDomainVitalSignsObservationOxygenSaturation",
  "title" : "no-domain-VitalSigns-Observation-oxygensaturation Profile",
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
  "description" : "Domain profile for Norwegian Vital Signs Observation Oxygen Saturation information.  \nTo be used for recording blood oxygen and related measurements, measured by pulse oximetry or pulse CO-oximetry.",
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
  "purpose" : "Basisprofile for Norwegian  VitalSigns Observation Oxygen Saturation information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Oxygen Saturation.",
  "copyright" : "Some content in this profile builds on the pulse oximetry archetype: Pulsoksymetri, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.53",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/oxygensat",
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
        "id" : "Observation.extension:inspiredOxygen",
        "path" : "Observation.extension",
        "sliceName" : "inspiredOxygen",
        "short" : "the amount of oxygen available to the subject at that moment",
        "definition" : "Details of the amount of oxygen available to the subject at the time of observation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:confoundingFactor",
        "path" : "Observation.extension",
        "sliceName" : "confoundingFactor",
        "short" : "Additional issues or factors that may impact for the measurement",
        "definition" : "Comment on and record other incidental factors that may be affect interpretation of the observation.\nComment: For example, motion, pain, poor perfusion, infant feeding, peripheral hypothermia, sedation..",
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
        "id" : "Observation.code.coding:OxygenSatSNOMEDCode",
        "path" : "Observation.code.coding",
        "sliceName" : "OxygenSatSNOMEDCode",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.code.coding:OxygenSatSNOMEDCode.system",
        "path" : "Observation.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://snomed.info/sct"
      },
      {
        "id" : "Observation.code.coding:OxygenSatSNOMEDCode.code",
        "path" : "Observation.code.coding.code",
        "min" : 1,
        "fixedCode" : "431314004"
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
      }
    ]
  }
}

```
