Profile: NoDomainVitalSignsObservationPerformerOrganizationReference
Parent: Reference
Id: NoDomainVitalSignsObservationPerformerOrganizationReference
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-organizationreference"
* ^status = #draft
* type = "Organization" (exactly)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    RSH 0..1 and
    ENH 0..1
* identifier[RSH].use ..0
* identifier[RSH].type ..0
* identifier[RSH].system 1..
* identifier[RSH].system = "urn:oid:2.16.578.1.12.4.1.4.102" (exactly)
* identifier[RSH].value 1..
* identifier[RSH].period ..0
* identifier[RSH].assigner ..0
* identifier[ENH].system = "urn:oid:2.16.578.1.12.4.1.2.101" (exactly)