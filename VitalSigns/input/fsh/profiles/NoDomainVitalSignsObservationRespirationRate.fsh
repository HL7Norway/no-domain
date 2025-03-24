Profile: NoDomainVitalSignsObservationRespirationRate
Parent: $resprate
Id: NoDomainVitalSignsObservationRespirationRate
Title: "NO Domain VitalSigns Observation - Respiration Rate"
Description: """Domain profile for Norwegian Vital Signs Observation Respiration Rate information.  
To be used for recording the observed and measured characteristics of spontaneous breathing by an individual, including respiratory rate, depth and rhythm."""
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationRate"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-01-28"
* ^copyright = "Some content in this profile builds on the respiration rate archetype: Åndedrett, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2280"
* ^purpose = "Domain profile for Norwegian  VitalSigns Observation Respiration Rate information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Respiration Rate ."
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

