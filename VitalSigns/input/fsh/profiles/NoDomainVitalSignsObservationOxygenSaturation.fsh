Profile: NoDomainVitalSignsObservationOxygenSaturation
Parent: $oxygensat
Id: no-domain-VitalSigns-Observation-oxygensaturation
Title: "no-domain-VitalSigns-Observation-oxygensaturation Profile"
Description: """Domain profile for Norwegian Vital Signs Observation Oxygen Saturation information.  
To be used for recording blood oxygen and related measurements, measured by pulse oximetry or pulse CO-oximetry."""
* ^status = #draft
* ^date = "2025-01-28"
* ^copyright = "Some content in this profile builds on the pulse oximetry archetype: Pulsoksymetri, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.53"
* ^purpose = "Basisprofile for Norwegian  VitalSigns Observation Oxygen Saturation information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Oxygen Saturation."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
     NoDomainVitalSignsInspiredOxygenExtension  named inspiredOxygen 0..* and
     NoDomainVitalSignsConfoundingFactorExtension  named confoundingFactor 0..1
* extension[confoundingFactor] ^definition = "Comment on and record other incidental factors that may be affect interpretation of the observation.
Comment: For example, motion, pain, poor perfusion, infant feeding, peripheral hypothermia, sedation.."
* extension[confoundingFactor] ^short = "Additional issues or factors that may impact for the measurement"
* extension[inspiredOxygen] ^definition = "Details of the amount of oxygen available to the subject at the time of observation."
* extension[inspiredOxygen] ^short = "the amount of oxygen available to the subject at that moment"

* subject only Reference(Patient or $no-basis-Patient)


* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[organization] only Reference(Organization or $no-basis-Organization)


* code.coding 1..
* code.coding contains OxygenSatSNOMEDCode 0..1
* code.coding[OxygenSatSNOMEDCode].system 1..
* code.coding[OxygenSatSNOMEDCode].system = "http://snomed.info/sct" (exactly)
* code.coding[OxygenSatSNOMEDCode].code 1..
* code.coding[OxygenSatSNOMEDCode].code = #431314004 (exactly)
 
    



     
    


