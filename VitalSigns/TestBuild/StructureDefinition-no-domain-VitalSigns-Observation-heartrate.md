# no-domain-VitalSigns-Observation-heartrate Profile - v0.9.72

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-domain-VitalSigns-Observation-heartrate Profile**

## Resource Profile: no-domain-VitalSigns-Observation-heartrate Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-heartrate | *Version*:0.9.72 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsObservationHeartRate |
| **Copyright/Legal**: Some content in this profile builds on the heart rate archetype: Puls/Hjertefrekvens, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2293 | |

 
Domain profile for Norwegian Vital Signs Observation Heart Rate information.
 To be used for recording the rate and associated attributes for a heart beat. This profile describes how to use a SNOMED code to indicate that the measurement is a general heart rate measurement, and not a more specific measurement of the actual heart beat or pulse reading. 

 
Basisprofile for Norwegian VitalSigns Observation Heart Rate information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Heart Rate. 

**Usages:**

* Examples for this Profile: [Observation/no-heart-rate-create](Observation-no-heart-rate-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/no-domain-VitalSigns-Observation-heartrate)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-domain-VitalSigns-Observation-heartrate.csv), [Excel](StructureDefinition-no-domain-VitalSigns-Observation-heartrate.xlsx), [Schematron](StructureDefinition-no-domain-VitalSigns-Observation-heartrate.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-domain-VitalSigns-Observation-heartrate",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-heartrate",
  "version" : "0.9.72",
  "name" : "NoDomainVitalSignsObservationHeartRate",
  "title" : "no-domain-VitalSigns-Observation-heartrate Profile",
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
  "description" : "Domain profile for Norwegian Vital Signs Observation Heart Rate information.  \nTo be used for recording the rate and associated attributes for a heart beat. This profile describes how to use a SNOMED code to indicate that the measurement is a general heart rate measurement, and not a more specific measurement of the actual heart beat or pulse reading.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "purpose" : "Basisprofile for Norwegian  VitalSigns Observation Heart Rate information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Heart Rate.",
  "copyright" : "Some content in this profile builds on the heart rate archetype: Puls/Hjertefrekvens, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2293",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/heartrate",
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
      "id" : "Observation.extension:heartRhythmIrregularity",
      "path" : "Observation.extension",
      "sliceName" : "heartRhythmIrregularity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsHeartRhythmIrregularityExtension"]
      }]
    },
    {
      "id" : "Observation.extension:confoundingFactor",
      "path" : "Observation.extension",
      "sliceName" : "confoundingFactor",
      "short" : "Additional issues or factors that may impact for the measurement",
      "definition" : "Narrative description about any incidental factors that may affect interpretation of the physical findings.\nComment: For example, presence of a pacemaker, level of anxiety; pain or fever etc.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension"]
      }]
    },
    {
      "id" : "Observation.extension:clinicalDescription",
      "path" : "Observation.extension",
      "sliceName" : "clinicalDescription",
      "short" : "Narrative description about the heart beat.",
      "definition" : "Narrative description about the heart beat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsClinicalDescriptionExtension"]
      }]
    },
    {
      "id" : "Observation.extension:BodyPosition",
      "path" : "Observation.extension",
      "sliceName" : "BodyPosition",
      "short" : "The body position of the subject during the observation.",
      "definition" : "The body position of the subject during the observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsHeartRatePulseBodyPositionExtension"]
      }]
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1
    },
    {
      "id" : "Observation.code.coding:HeartRateSNOMEDCode",
      "path" : "Observation.code.coding",
      "sliceName" : "HeartRateSNOMEDCode",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.code.coding:HeartRateSNOMEDCode.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.code.coding:HeartRateSNOMEDCode.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "fixedCode" : "364075005"
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
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "The rate of the  heart beat, measured in beats per minute.",
      "definition" : "The rate of the heart beat, measured in beats per minute.",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsHeartRateBodySiteValueSet"
      }
    },
    {
      "id" : "Observation.bodySite.coding",
      "path" : "Observation.bodySite.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsHeartRateBodySiteValueSet"
      }
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsHeartRateMeasurementMethodValueSet"
      }
    },
    {
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsHeartRateMeasurementMethodValueSet"
      }
    }]
  }
}

```
