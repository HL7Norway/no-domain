Profile: DipsVitalSignsObservationBodyMassIndex
Parent: NoDomainVitalSignsObservationBodyMassIndex
Id: DipsVitalSignsObservationBodyMassIndex
Title: "DIPS Vital Signs Observation - Body Mass Index(BMI)"
Description: "DIPS profile for Body Mass Index(BMI) including some extensions"
* ^url = "http://dips.no/fhir/StructureDefinition/DipsVitalSignsObservationBodyMassIndex"
* ^status = #draft
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    RelativeEhrUri 0..1 and
    Id 0..1 and
    VersionIdependentId 0..1 and
    ExternalId 0..1 and
    ExternalFhirId 0..*
* identifier[RelativeEhrUri].id ..0
* identifier[RelativeEhrUri].use ..0
* identifier[RelativeEhrUri].type ..0
* identifier[RelativeEhrUri].system 1..
* identifier[RelativeEhrUri].system = "http://dips.no/fhir/namingsystem/dips-RelativeEhrUri" (exactly)
* identifier[RelativeEhrUri].value 1..
* identifier[RelativeEhrUri].period ..0
* identifier[RelativeEhrUri].assigner ..0
* identifier[Id].id ..0
* identifier[Id].use ..0
* identifier[Id].type ..0
* identifier[Id].system 1..
* identifier[Id].system = "http://dips.no/fhir/namingsystem/dips-ObservationId" (exactly)
* identifier[Id].value 1..
* identifier[Id].period ..0
* identifier[Id].assigner ..0
* identifier[VersionIdependentId].id ..0
* identifier[VersionIdependentId].use ..0
* identifier[VersionIdependentId].type ..0
* identifier[VersionIdependentId].system 1..
* identifier[VersionIdependentId].value 1..
* identifier[VersionIdependentId].period ..0
* identifier[VersionIdependentId].assigner ..0
* identifier[ExternalId].id ..0
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
* subject 1..1
// * subject only DipsVitalSignsObservationSubjectReference
* subject.identifier 1..
// * encounter only DipsVitalSignsObservationEncounterReference
* issued ..0
// * performer[Author] only DipsVitalSignsObservationPerformerAuthorReference
// * performer[Author].identifier 1..
// * performer[Organization] only DipsVitalSignsObservationPerformerOrganizationReference
// * performer[Organization].identifier 1..
* dataAbsentReason ..0
* note.id ..0
* note.author[x] ..0
* note.time ..0
* bodySite ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember ..0
* derivedFrom ..0
* component ..0