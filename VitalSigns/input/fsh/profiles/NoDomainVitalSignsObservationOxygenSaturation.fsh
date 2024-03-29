Profile: NoDomainVitalSignsObservationOxygenSaturation
Parent: $oxygensat
Id: NoDomainVitalSignsObservationOxygenSaturation
Title: "NO Domain VitalSigns Observation - Oxygen Saturation"
Description: """Base profile for Norwegian Vital Signs Observation Oxygen Saturation information.  
Use to record blood oxygen and related measurements, measured by pulse oximetry or pulse CO-oximetry."""
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationOxygenSaturation"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^purpose = "Basisprofile for Norwegian  VitalSigns Observation Oxygen Saturation information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Oxygen Saturation."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
     NoDomainVitalSignsObservationInspiredOxygen  named inspiredOxygen 0..*
* partOf ^comment = "To link an Observation to an Encounter use `encounter`.  See the  Notes below for guidance on referencing another Observation."
* subject only Reference(Patient or $no-basis-Patient)
* focus ..0
* focus ^comment = "Typically, an observation is made about the subject - a patient, or group of patients, location, or device - and the distinction between the subject and what is directly measured for an observation is specified in the observation code itself ( e.g., \"Blood Glucose\") and does not need to be represented separately using this element.  Use `specimen` if a reference to a specimen is required."
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the Timing datatype which allow the measurement to be tied to regular life events."
* issued ^comment = "For Observations that don’t require review and verification, it may be the same as the `lastUpdated`  time of the resource itself.  For Observations that do require review and verification for certain updates, it might not be the same as the `lastUpdated` time of the resource itself due to a non-clinically significant update that doesn’t require the new version to be reviewed and verified again."
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[organization] only Reference(Organization or $no-basis-Organization)
* note.id ..0
* note.author[x] ..0
* note.time ..0
* bodySite ^comment = "Here bodySite.test only used from Codeableconcept datatype"
* bodySite.coding ..0
* hasMember ^comment = "When using this element, an observation will typically have either a value or a set of related resources, although both may be present in some cases.  For a discussion on the ways Observations can assembled in groups together, see Notes below.  Note that a system may calculate results from QuestionnaireResponse into a final score and represent the score as an Observation."
* derivedFrom ^comment = "All the reference choices that are listed in this element can represent clinical observations and other measurements that may be the source for a derived value.  The most common reference will be another Observation.  For a discussion on the ways Observations can assembled in groups together, see Notes below."
* component ^comment = "For a discussion on the ways Observations can be assembled in groups together see Notes below."
* code.coding 1..
* code.coding contains OxygenSatSNOMEDCode 0..1
* code.coding[OxygenSatSNOMEDCode].system 1..
* code.coding[OxygenSatSNOMEDCode].system = "http://snomed.info/sct" (exactly)
* code.coding[OxygenSatSNOMEDCode].code 1..
* code.coding[OxygenSatSNOMEDCode].code = #431314004 (exactly)
 
    



     
    


