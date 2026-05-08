# no-respiratory-rate-create - v0.9.74

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-respiratory-rate-create**

## Example Observation: no-respiratory-rate-create

version: 0; Last updated: 2014-01-30 22:35:23+1100; 

Information Source: [HL7_Norway](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.2&canonical=http://fhir.org/packages/hl7.fhir.no.basis/HL7_Norway)

Profile: [no-domain-VitalSigns-Observation-respirationrate Profile](StructureDefinition-no-domain-VitalSigns-Observation-respirationrate.md)

**NoDomainVitalSignsRespirationRateBodyPosition-Extension**: [SNOMED CT: 10904000](http://snomed.info/id/10904000) (oppreist stilling)

**NoDomainVitalSignsRespirationRegularity-Extension**: [SNOMED CT: 276888009](http://snomed.info/id/276888009) (Regelmessig)

**NoDomainVitalSignsRespirationDepth-Extension**: [SNOMED CT: 301284009](http://snomed.info/id/301284009) (Normal)

**NoDomainVitalSignsClinicalDescription-Extension**: 

> 

Description of Respiration


**NoDomainVitalSignsSpontaneousBreathing-Extension**: [SNOMED CT: 241700002](http://snomed.info/id/241700002) (Tilstede)

> **NoDomainVitalSignsInspiredOxygen-Extension**
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFlowExtension: 6100 ml/min
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFiO2Extension: 21/100
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPercentO2Extension: 21/100
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsOnAirExtension: true
* http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsMethodofOxygenDeliveryExtension: Maske

**NoDomainVitalSignsConfoundingFactor-Extension**: sample confounding factor

**status**: Final

**category**: Vital Signs

**code**: Respiratory rate

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#1000240)](Patient-cdp1000240.md)

**effective**: 2021-05-10

**performer**: 

* [PractitionerRole: identifier = urn:oid:1.3.6.1.4.1.9038.51.1#30](PractitionerRole-agb30.md)
* [Organization: identifier = urn:oid:1.3.6.1.4.1.9038.70.3#23](Organization-afa23.md)

**value**: 14 /min (Details: UCUM code/min = '/min')

**interpretation**: Clinical interpretation of Respiration

**note**: 

> 

Demo Respiration




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "no-respiratory-rate-create",
  "meta" : {
    "versionId" : "0",
    "lastUpdated" : "2014-01-30T22:35:23+11:00",
    "source" : "HL7_Norway",
    "profile" : ["http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-respirationrate"]
  },
  "extension" : [{
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsRespirationRateBodyPositionExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "10904000",
      "display" : "oppreist stilling"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsRespirationRegularityExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "276888009",
      "display" : "Regelmessig"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsRespirationDepthExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "301284009",
      "display" : "Normal"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsClinicalDescriptionExtension",
    "valueAnnotation" : {
      "text" : "Description of Respiration"
    }
  },
  {
    "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsSpontaneousBreathingExtension",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "241700002",
      "display" : "Tilstede"
    }
  },
  {
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
      "valueString" : "Maske"
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
      "code" : "9279-1",
      "display" : "Respiratory rate"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "271625008",
      "display" : "Rate of spontaneous respiration (observable entity)"
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
    "reference" : "PractitionerRole/agb30",
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.9038.51.1",
      "value" : "30"
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
    "value" : 14,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "interpretation" : [{
    "text" : "Clinical interpretation of Respiration"
  }],
  "note" : [{
    "text" : "Demo Respiration"
  }]
}

```
