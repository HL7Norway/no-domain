# no-blood-pressure-create - v0.9.61

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-blood-pressure-create**

## Example Observation: no-blood-pressure-create

version: 0; Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [HL7_Norway](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/HL7_Norway)

Profile: [no-domain-VitalSigns-Observation-bloodpressure Profile](StructureDefinition-no-domain-VitalSigns-Observation-bloodpressure.md)

**NoDomainVitalSignsBloodpressureBodyPosition-Extension**: [SNOMED CT 4801000202104](http://snomed.info/id/4801000202104): Liggende

**NoDomainVitalSignsCuffSize-Extension**: [SNOMED CT 720740000](http://snomed.info/id/720740000): Lår voksne

**NoDomainVitalSignsSleepStatus-Extension**: [SNOMED CT 248218005](http://snomed.info/id/248218005): Våken

**NoDomainVitalSignsTilt-Extension**: 14 deg

**NoDomainVitalSignsBloodpressureSystolicFormula-Extension**: sample formula 1

**NoDomainVitalSignsBloodpressureDiastolicFormula-Extension**: sample formula 2

**NoDomainVitalSignsBloodpressureMeanArterialFormula-Extension**: sample formula 3

**status**: Final

**category**: Vital Signs

**code**: BP pnl w all optional

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:2.16.578.1.12.4.1.4.1#1000808)](Patient-cdp1000808.md)

**effective**: 2021-05-10

**performer**: 

* [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.51.1#104](PractitionerRole-agb104.md)
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#23](Organization-afa23.md)

**note**: 

> 

Demo Blood Pressure


**bodySite**: Finger

**method**: Auskultasjon

> **component****code**:Systolic blood pressure**value**: 123 mm[Hg](Details: UCUM codemm[Hg] = 'mm[Hg]')

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 120 mm[Hg] | 139 mm[Hg] |


> **component****code**:Diastolic blood pressure**value**: 78 mm[Hg](Details: UCUM codemm[Hg] = 'mm[Hg]')

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 60 mm[Hg] | 89 mm[Hg] |


> **component****code**:Mean blood pressure**value**: 93 mm[Hg](Details: UCUM codemm[Hg] = 'mm[Hg]')

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 60 mm[Hg] | 100 mm[Hg] |




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "no-blood-pressure-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "HL7_Norway",
    "profile" : [
      "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bloodpressure"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureBodyPositionExtension",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "4801000202104",
        "display" : "Liggende"
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsCuffSizeExtension",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "720740000",
        "display" : "Lår voksne"
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsSleepStatusExtension",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "248218005",
        "display" : "Våken"
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsTiltExtension",
      "valueQuantity" : {
        "value" : 14,
        "unit" : "deg"
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureSystolicFormulaExtension",
      "valueString" : "sample formula 1"
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureDiastolicFormulaExtension",
      "valueString" : "sample formula 2"
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension",
      "valueString" : "sample formula 3"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "85354-9"
      }
    ],
    "text" : "BP pnl w all optional"
  },
  "subject" : {
    "reference" : "Patient/cdp1000808",
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "1000808"
    }
  },
  "effectiveDateTime" : "2021-05-10",
  "performer" : [
    {
      "reference" : "PractitionerRole/agb104",
      "identifier" : {
        "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
        "value" : "104"
      }
    },
    {
      "reference" : "Organization/afa23",
      "identifier" : {
        "system" : "urn:oid:1.3.6.1.4.1.9038.70.3",
        "value" : "23"
      }
    }
  ],
  "note" : [
    {
      "text" : "Demo Blood Pressure"
    }
  ],
  "bodySite" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "7569003",
        "display" : "Finger"
      }
    ]
  },
  "method" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "37931006",
        "display" : "Auskultasjon"
      }
    ]
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8480-6",
            "display" : "Systolic blood pressure"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "4471000202106",
            "display" : "Systolic blood pressure"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 123,
        "unit" : "mm[Hg]",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      },
      "referenceRange" : [
        {
          "low" : {
            "value" : 120,
            "unit" : "mm[Hg]"
          },
          "high" : {
            "value" : 139,
            "unit" : "mm[Hg]"
          }
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8462-4",
            "display" : "Diastolic blood pressure"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "4481000202108",
            "display" : "Diastolic blood pressure"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 78,
        "unit" : "mm[Hg]",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      },
      "referenceRange" : [
        {
          "low" : {
            "value" : 60,
            "unit" : "mm[Hg]"
          },
          "high" : {
            "value" : 89,
            "unit" : "mm[Hg]"
          }
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8478-0",
            "display" : "Mean blood pressure"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "4501000202102",
            "display" : "Mean arterial pressure (observable entity)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 93,
        "unit" : "mm[Hg]",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      },
      "referenceRange" : [
        {
          "low" : {
            "value" : 60,
            "unit" : "mm[Hg]"
          },
          "high" : {
            "value" : 100,
            "unit" : "mm[Hg]"
          }
        }
      ]
    }
  ]
}

```
