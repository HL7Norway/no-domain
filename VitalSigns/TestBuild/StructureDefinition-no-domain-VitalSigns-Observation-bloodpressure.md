# no-domain-VitalSigns-Observation-bloodpressure Profile - v0.9.72

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-domain-VitalSigns-Observation-bloodpressure Profile**

## Resource Profile: no-domain-VitalSigns-Observation-bloodpressure Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bloodpressure | *Version*:0.9.72 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsObservationBloodpressure |
| **Copyright/Legal**: Some content in this profile builds on the blood pressure archetype: Blodtrykk, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-02]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2165 | |

 
Domain profile for Norwegian Vital Signs Observation of Blood Pressure. To be used for recording an individual's systemic arterial blood pressure. It represents the local measurement of arterial blood pressure, serving as a surrogate for arterial pressure in the systemic circulation. 

 
To record the systemic arterial blood pressure of an individual. 

**Usages:**

* Examples for this Profile: [Observation/no-blood-pressure-create](Observation-no-blood-pressure-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/no-domain-VitalSigns-Observation-bloodpressure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-domain-VitalSigns-Observation-bloodpressure.csv), [Excel](StructureDefinition-no-domain-VitalSigns-Observation-bloodpressure.xlsx), [Schematron](StructureDefinition-no-domain-VitalSigns-Observation-bloodpressure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-domain-VitalSigns-Observation-bloodpressure",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bloodpressure",
  "version" : "0.9.72",
  "name" : "NoDomainVitalSignsObservationBloodpressure",
  "title" : "no-domain-VitalSigns-Observation-bloodpressure Profile",
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
  "description" : "Domain profile for Norwegian Vital Signs Observation of Blood Pressure. To be used for recording an individual's systemic arterial blood pressure.\nIt represents the local measurement of arterial blood pressure, serving as a surrogate for arterial pressure in the systemic circulation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "purpose" : "To record the systemic arterial blood pressure of an individual.",
  "copyright" : "Some content in this profile builds on the blood pressure archetype: Blodtrykk, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-02]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2165",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bp",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "short" : "FHIR Blood Pressure Profile Norway"
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
      "definition" : "Narrative description of any issues or factors that may impact on measurment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension"]
      }]
    },
    {
      "id" : "Observation.extension:headTiltAngle",
      "path" : "Observation.extension",
      "sliceName" : "headTiltAngle",
      "short" : "The craniocaudal tilt of the surface on which the person is lying at the time of measurement.",
      "definition" : "The craniocaudal tilt of the surface on which the person is lying at the time of measurement.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsTiltExtension"]
      }]
    },
    {
      "id" : "Observation.extension:sleepStatus",
      "path" : "Observation.extension",
      "sliceName" : "sleepStatus",
      "short" : "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records.",
      "definition" : "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsSleepStatusExtension"]
      }]
    },
    {
      "id" : "Observation.extension:cuffSize",
      "path" : "Observation.extension",
      "sliceName" : "cuffSize",
      "short" : "The size of the cuff used for blood pressure measurement.",
      "definition" : "The size of the cuff used for blood pressure measurement.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsCuffSizeExtension"]
      }]
    },
    {
      "id" : "Observation.extension:bodyPosition",
      "path" : "Observation.extension",
      "sliceName" : "bodyPosition",
      "short" : "The position of the individual at the time of measurement.",
      "definition" : "The position of the individual at the time of measurement.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureBodyPositionExtension"]
      }]
    },
    {
      "id" : "Observation.extension:formulaMAPCalc",
      "path" : "Observation.extension",
      "sliceName" : "formulaMAPCalc",
      "short" : "Formula used to calculate the Mean Arterial Pressure",
      "definition" : "Formula used to calculate the Mean Arterial Pressure",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension"]
      }]
    },
    {
      "id" : "Observation.extension:formulaSystolicCalc",
      "path" : "Observation.extension",
      "sliceName" : "formulaSystolicCalc",
      "short" : "Formula used to calculate the systolic pressure from mean arterial pressure",
      "definition" : "Formula used to calculate the systolic pressure from mean arterial pressure",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureSystolicFormulaExtension"]
      }]
    },
    {
      "id" : "Observation.extension:formulaDiastolicCalc",
      "path" : "Observation.extension",
      "sliceName" : "formulaDiastolicCalc",
      "short" : "Formula used to calculate the diastolic pressure from mean arterial pressure",
      "definition" : "Formula used to calculate the diastolic pressure from mean arterial pressure",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureDiastolicFormulaExtension"]
      }]
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1
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
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBloodpressureBodySiteValueSet"
      }
    },
    {
      "id" : "Observation.bodySite.coding",
      "path" : "Observation.bodySite.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBloodpressureBodySiteValueSet"
      }
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Method of measurement of blood pressure.",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBloodPressureMeasurementMethodValueSet"
      }
    },
    {
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBloodPressureMeasurementMethodValueSet"
      }
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "max" : "1"
    },
    {
      "id" : "Observation.component:SystolicBP",
      "path" : "Observation.component",
      "sliceName" : "SystolicBP",
      "short" : "Peak  systemic arterial blood pressure - measured in systolic or contraction phase of the heart cycle."
    },
    {
      "id" : "Observation.component:SystolicBP.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1
    },
    {
      "id" : "Observation.component:SystolicBP.code.coding:SystolicSnomed",
      "path" : "Observation.component.code.coding",
      "sliceName" : "SystolicSnomed",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:SystolicBP.code.coding:SystolicSnomed.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.component:SystolicBP.code.coding:SystolicSnomed.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "4471000202106"
    },
    {
      "id" : "Observation.component:DiastolicBP",
      "path" : "Observation.component",
      "sliceName" : "DiastolicBP",
      "short" : "Minimum systemic arterial blood pressure - measured in the diastolic or relaxation phase of the heart cycle."
    },
    {
      "id" : "Observation.component:DiastolicBP.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1
    },
    {
      "id" : "Observation.component:DiastolicBP.code.coding:DiastolicBPSnomed",
      "path" : "Observation.component.code.coding",
      "sliceName" : "DiastolicBPSnomed",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:DiastolicBP.code.coding:DiastolicBPSnomed.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.component:DiastolicBP.code.coding:DiastolicBPSnomed.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "4481000202108"
    },
    {
      "id" : "Observation.component:MeanArterialPressure",
      "path" : "Observation.component",
      "sliceName" : "MeanArterialPressure",
      "short" : "The average arterial pressure that occurs over the entire course of the heart contraction and relaxation cycle.",
      "comment" : "For a discussion on the ways Observations can be assembled in groups together see Notes below.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code",
      "path" : "Observation.component.code",
      "comment" : "additional codes that translate or map to this code are allowed.  For example a more granular LOINC code or code that is used locally in a system.",
      "alias" : ["Component Test", "Component Name"]
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding",
      "path" : "Observation.component.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        },
        {
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Mean Arterial Pressure",
      "definition" : "Mean Arterial Pressure"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode",
      "path" : "Observation.component.code.coding",
      "sliceName" : "MAPCode",
      "short" : "Mean Arterial Pressure loinc code",
      "definition" : "Mean Arterial Pressure loinc code.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPCode.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "8478-0"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPSnomedCode",
      "path" : "Observation.component.code.coding",
      "sliceName" : "MAPSnomedCode",
      "short" : "Mean Arterial Pressure snomed code",
      "definition" : "Mean Arterial Pressure snomed code",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPSnomedCode.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.code.coding:MAPSnomedCode.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "4501000202102"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x].system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:MeanArterialPressure.value[x].code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "fixedCode" : "mm[Hg]"
    },
    {
      "id" : "Observation.component:PulsePressure",
      "path" : "Observation.component",
      "sliceName" : "PulsePressure",
      "short" : "The difference between the systolic and diastolic pressure.",
      "comment" : "For a discussion on the ways Observations can be assembled in groups together see Notes below.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:PulsePressure.id",
      "path" : "Observation.component.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:PulsePressure.code.coding",
      "path" : "Observation.component.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:PulsePressure.code.coding:SAPSnomedCode",
      "path" : "Observation.component.code.coding",
      "sliceName" : "SAPSnomedCode",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:PulsePressure.code.coding:SAPSnomedCode.id",
      "path" : "Observation.component.code.coding.id",
      "max" : "0"
    },
    {
      "id" : "Observation.component:PulsePressure.code.coding:SAPSnomedCode.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.component:PulsePressure.code.coding:SAPSnomedCode.version",
      "path" : "Observation.component.code.coding.version",
      "max" : "0"
    },
    {
      "id" : "Observation.component:PulsePressure.code.coding:SAPSnomedCode.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "fixedCode" : "4461000202102"
    },
    {
      "id" : "Observation.component:PulsePressure.code.coding:SAPSnomedCode.userSelected",
      "path" : "Observation.component.code.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "Observation.component:PulsePressure.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:PulsePressure.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.component:PulsePressure.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1
    },
    {
      "id" : "Observation.component:PulsePressure.value[x].system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:PulsePressure.value[x].code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "fixedCode" : "mm[Hg]"
    }]
  }
}

```
