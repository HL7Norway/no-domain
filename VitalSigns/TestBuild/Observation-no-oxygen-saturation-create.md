# no-oxygen-saturation-create - v0.9.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-oxygen-saturation-create**

## Example Observation: no-oxygen-saturation-create

version: 0; Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [HL7_Norway](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.0&canonical=http://fhir.org/packages/hl7.fhir.no.basis/HL7_Norway)

Profile: [no-domain-VitalSigns-Observation-oxygensaturation Profile](StructureDefinition-no-domain-VitalSigns-Observation-oxygensaturation.md)

> **NoDomainVitalSignsInspiredOxygen-Extension**
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFlowExtension: 6100 ml/min
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFiO2Extension: 21/100
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPercentO2Extension: 21/100
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsOnAirExtension: true
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsMethodofOxygenDeliveryExtension: Oxygen administration method

**NoDomainVitalSignsConfoundingFactor-Extension**: sample confounding factor

**status**: Final

**category**: Vital Signs

**code**: Oxygen saturation in Arterial blood

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#1000240)](Patient-cdp1000240.md)

**effective**: 2021-05-10

**performer**: 

* Identifier: `urn:oid:2.16.578.1.12.4.1.2`/889911
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#23](Organization-afa23.md)

**value**: 24 % (Details: UCUM code% = '%')

**note**: 

> 

Demo pulse oxymetri


**bodySite**: Demo pulse oxymetri bodysite



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "no-oxygen-saturation-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "HL7_Norway",
    "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-oxygensaturation"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFlowExtension",
      "valueQuantity" : {
        "value" : 6100,
        "unit" : "ml/min"
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFiO2Extension",
      "valueRatio" : {
        "numerator" : {
          "value" : 21
        },
        "denominator" : {
          "value" : 100
        }
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPercentO2Extension",
      "valueRatio" : {
        "numerator" : {
          "value" : 21
        },
        "denominator" : {
          "value" : 100
        }
      }
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsOnAirExtension",
      "valueBoolean" : true
    },
    {
      "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsMethodofOxygenDeliveryExtension",
      "valueString" : "Oxygen administration method"
    }],
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension"
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension",
    "valueCodeableConcept" : {
      "text" : "sample confounding factor"
    }
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "2708-6",
      "display" : "Oxygen saturation in Arterial blood"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "431314004",
      "display" : "Peripheral oxygen saturation (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/cdp1000240",
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "1000240"
    }
  },
  "effectiveDateTime" : "2021-05-10",
  "performer" : [{
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
  }],
  "valueQuantity" : {
    "value" : 24,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "note" : [{
    "text" : "Demo pulse oxymetri"
  }],
  "bodySite" : {
    "text" : "Demo pulse oxymetri bodysite"
  }
}

```
