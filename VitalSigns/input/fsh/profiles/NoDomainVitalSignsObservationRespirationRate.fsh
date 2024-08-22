Profile: NoDomainVitalSignsObservationRespirationRate
Parent: $resprate
Id: NoDomainVitalSignsObservationRespirationRate
Title: "NO Domain VitalSigns Observation - Respiration Rate"
Description: """Base profile for Norwegian Vital Signs Observation Respiration Rate information.  
Use to record the observed and measured characteristics of spontaneous breathing by an individual, including respiratory rate, depth and rhythm."""
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationRate"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^purpose = "Basisprofile for Norwegian  VitalSigns Observation Respiration Rate information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Respiration Rate ."
* meta.lastUpdated ^comment = "This value is always populated except when the resource is first being created. The server / resource manager sets this value; what a client provides is irrelevant. This is equivalent to the HTTP Last-Modified and SHOULD have the same value on a read interaction."
* meta.source ^definition = "A uri that identifies the source system of the resource. This provides a minimal amount of Provenance information that can be used to track or differentiate the source of information in the resource. The source may identify another FHIR server, document, message, database, etc."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoDomainVitalSignsObservationRespirationRateBodyPosition  named bodyPosition 0..1 and
    NoDomainVitalSignsObservationRespirationRegularity  named respirationRegularity 0..1 and
    NoDomainVitalSignsObservationSpontaneousBreathing  named spontaneousBreathing 0..1 and
    NoDomainVitalSignsObservationClinicalDescription  named clinicalDescription 0..1 and
    NoDomainVitalSignsObservationRespirationDepth  named respirationDepth 0..1 and
    NoDomainVitalSignsObservationInspiredOxygen  named inspiredOxygen 0..1 and
     NoDomainVitalSignsObservationConfoundingFactor  named confoundingFactor 0..1 
* extension[bodyPosition] ^short = "The body position of the individual during the observation."
* extension[bodyPosition] ^definition = "The body position of the individual during the observation."
* extension[respirationRegularity] ^short = "The regularity of spontaneous breathing."
* extension[respirationRegularity] ^definition = "The regularity of spontaneous breathing."
* extension[confoundingFactor] ^definition = "Identification of any issues or incidental factors that may impact on interpretation of the observation.
Comment: For example: level of anxiety, pain, feeding in infants, tracheostomy."
* extension[confoundingFactor] ^short = "Additional issues or factors that may impact for the measurement"
* subject only Reference(Patient or $no-basis-Patient)

* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[organization] only Reference(Organization or $no-basis-Organization)
* valueQuantity ^short = "The frequency of spontaneous breathing."
* valueQuantity ^definition = "The frequency of spontaneous breathing."


* code.coding 1..
* code.coding contains ResRateSNOMEDCode 0..1
* code.coding[ResRateSNOMEDCode].system 1..
* code.coding[ResRateSNOMEDCode].system = "http://snomed.info/sct" (exactly)
* code.coding[ResRateSNOMEDCode].code 1..
* code.coding[ResRateSNOMEDCode].code = #271625008 (exactly)

