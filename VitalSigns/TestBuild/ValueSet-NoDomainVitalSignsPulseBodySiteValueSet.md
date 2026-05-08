# NoDomainVitalSignsPulseBodySite-ValueSet - v0.9.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsPulseBodySite-ValueSet**

## ValueSet: NoDomainVitalSignsPulseBodySite-ValueSet 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsPulseBodySiteValueSet | *Version*:0.9.2 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NoDomainVitalSignsPulseBodySiteValueSet |
| **Copyright/Legal**: This resource includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/get-snomed-ct or info@snomed.org | | |

 
Codes representing body site for pulse 

 **References** 

* [no-domain-VitalSigns-Observation-pulse Profile](StructureDefinition-no-domain-VitalSigns-Observation-pulse.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "NoDomainVitalSignsPulseBodySiteValueSet",
  "meta" : {
    "lastUpdated" : "2025-01-28T00:00:00+00:00",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "oo"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsPulseBodySiteValueSet",
  "version" : "0.9.2",
  "name" : "NoDomainVitalSignsPulseBodySiteValueSet",
  "title" : "NoDomainVitalSignsPulseBodySite-ValueSet",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-05-08T07:11:48+00:00",
  "publisher" : "HL7 Norway",
  "contact" : [{
    "name" : "HL7 Norway",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.no"
    }]
  }],
  "description" : "Codes representing body site for pulse",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "copyright" : "This resource includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/get-snomed-ct or info@snomed.org",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "723962009",
        "display" : "Brachialisarterien, høyre"
      },
      {
        "code" : "723961002",
        "display" : "Brachialisarterien, venstre"
      },
      {
        "code" : "721033002",
        "display" : "Carotisarterien, høyre"
      },
      {
        "code" : "721028001",
        "display" : "Carotisarterien, venstre"
      },
      {
        "code" : "69833005",
        "display" : "Femoralisarterien, høyre"
      },
      {
        "code" : "113270003",
        "display" : "Femoralisarterien, venstre"
      },
      {
        "code" : "7569003",
        "display" : "Finger"
      },
      {
        "code" : "48800003",
        "display" : "Øreflipp"
      },
      {
        "code" : "368503001",
        "display" : "Radialisarterien, høyre"
      },
      {
        "code" : "368504007",
        "display" : "Radialisarterien, venstre"
      },
      {
        "code" : "29707007",
        "display" : "Tå"
      },
      {
        "code" : "86547008",
        "display" : "Dorsalis pedis"
      }]
    }]
  }
}

```
