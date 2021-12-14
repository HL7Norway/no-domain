Profile: DipsVitalSignsObservationBloodpressure
Parent: NoDomainVitalSignsObservationBloodpressure
Id: DipsVitalSignsObservationBloodpressure
Title: "DIPS Vital Signs Observation - Blood Pressure"
Description: "DIPS profile for Blood Pressure including some extensions"
* ^url = "http://dips.no/fhir/StructureDefinition/DipsVitalSignsObservationBloodpressure"
* ^status = #draft
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains DipsJournalIdExtension named DipsJournalId 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    RelativeEhrUri 0..1 and
    Id 0..* and
    VersionIdependentId 0..1 and
    ExternalId 0..1 and
    ExternalFhirId 0..*
* identifier[RelativeEhrUri].use ..0
* identifier[RelativeEhrUri].type ..0
* identifier[RelativeEhrUri].system 1..
* identifier[RelativeEhrUri].system = "http://dips.no/fhir/namingsystem/dips-RelativeEhrUri" (exactly)
* identifier[RelativeEhrUri].value 1..
* identifier[RelativeEhrUri].period ..0
* identifier[RelativeEhrUri].assigner ..0
* identifier[Id].use ..0
* identifier[Id].type ..0
* identifier[Id].system 1..
* identifier[Id].system = "http://dips.no/fhir/namingsystem/dips-ObservationId" (exactly)
* identifier[Id].value 1..
* identifier[Id].period ..0
* identifier[Id].assigner ..0
* identifier[VersionIdependentId].use ..0
* identifier[VersionIdependentId].type ..0
* identifier[VersionIdependentId].system 1..
* identifier[VersionIdependentId].value 1..
* identifier[VersionIdependentId].period ..0
* identifier[VersionIdependentId].assigner ..0
* identifier[ExternalId].use ..0
* identifier[ExternalId].type ..0
* identifier[ExternalId].system 1..
* identifier[ExternalId].system = "http://dips.no/fhir/namingsystem/externalId" (exactly)
* identifier[ExternalId].value 1..
* identifier[ExternalId].period ..0
* identifier[ExternalId].assigner ..0
* identifier[ExternalFhirId].use ..0
* identifier[ExternalFhirId].type ..0
* identifier[ExternalFhirId].system 1..
* identifier[ExternalFhirId].system = "http://dips.no/fhir/namingsystem/external-fhirid" (exactly)
* identifier[ExternalFhirId].value 1..
* identifier[ExternalFhirId].period ..0
* identifier[ExternalFhirId].assigner ..0
* basedOn ..0
* partOf ..0
* subject 1..
//* subject only DipsVitalSignsObservationSubjectReference
* subject.identifier 1..
// * encounter only DipsVitalSignsObservationEncounterReference
* encounter.identifier 1..
* issued ..0
// * performer[Author] only Reference(Practitioner or PractitionerRole)
// * performer[Author] only DipsVitalSignsObservationPerformerAuthorReference
// * performer[Author] ^type.profile = "http://dips.no/fhir/StructureDefinition/dips-vitalsignsobservation-performerauthorreference"
* performer[Author] 1..
// * performer[Organization] only Reference(Organization)
// * performer[Organization] only DipsVitalSignsObservationPerformerOrganizationReference
// * performer[Organization] ^type.profile = "http://dips.no/fhir/StructureDefinition/dips-vitalsignsobservation-performerorganizationreference"
// * performer[Organization].identifier 1..
* value[x] ..0
* dataAbsentReason ..0
* interpretation ..0
* specimen ..0
* referenceRange ..0
* hasMember ..0
* derivedFrom ..0