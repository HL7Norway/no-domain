# no-pulse-rate - v0.9.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-pulse-rate**

## Example Observation: no-pulse-rate

version: 0; Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [HL7_Norway](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.0&canonical=http://fhir.org/packages/hl7.fhir.no.basis/HL7_Norway)

Profile: [no-domain-VitalSigns-Observation-pulse Profile](StructureDefinition-no-domain-VitalSigns-Observation-pulse.md)

**NoDomainVitalSignsPulseRhythm-Extension**: [SNOMED CT: 271636001](http://snomed.info/id/271636001) (Regelmessig)

**NoDomainVitalSignsConfoundingFactor-Extension**: sample confounding factor

**NoDomainVitalSignsPulseRhythmIrregularity-Extension**: [SNOMED CT: 271638000](http://snomed.info/id/271638000) (Regelmessig uregelmessig)

**NoDomainVitalSignsClinicalDescription-Extension**: 

> 

Clinical description sample


**NoDomainVitalSignsHeartRatePulseBodyPosition-Extension**: [SNOMED CT: 33586001](http://snomed.info/id/33586001) (Sittende)

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:2.16.578.1.12.4.1.4.1#1000240)](Patient-cdp1000240.md)

**effective**: 2021-05-10

**performer**: 

* Identifier: `urn:oid:2.16.578.1.12.4.1.2`/889911
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#23](Organization-afa23.md)

**value**: 61 /min(Details: UCUM code/min = '/min')

**note**: 

> 

Demo Pulse Rate


**bodySite**: Tå



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "no-pulse-rate",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "HL7_Norway",
    "profile" : [
      "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-pulse"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPulseRhythmExtension",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "271636001",
        "display" : "Regelmessig"
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension",
      "valueCodeableConcept" : {
        "text" : "sample confounding factor"
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPulseRhythmIrregularityExtension",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "271638000",
        "display" : "Regelmessig uregelmessig"
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsClinicalDescriptionExtension",
      "valueAnnotation" : {
        "text" : "Clinical description sample"
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsHeartRatePulseBodyPositionExtension",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "33586001",
        "display" : "Sittende"
      }
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
        "code" : "8867-4",
        "display" : "Heart rate"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/cdp1000240",
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "1000240"
    }
  },
  "effectiveDateTime" : "2021-05-10",
  "performer" : [
    {
      "identifier" : {
        "system" : "urn:oid:2.16.578.1.12.4.1.2",
        "value" : "889911"
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
  "valueQuantity" : {
    "value" : 61,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "note" : [
    {
      "text" : "Demo Pulse Rate"
    }
  ],
  "bodySite" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "29707007",
        "display" : "Tå"
      }
    ]
  }
}

```
