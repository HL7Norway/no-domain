<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile observation-heartrate
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="count(f:extension[@url = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRhythm']) &lt;= 1">extension with URL = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRhythm': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationConfoundingFactor']) &lt;= 1">extension with URL = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationConfoundingFactor': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationClinicalDescription']) &lt;= 1">extension with URL = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationClinicalDescription': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationCharacterOfHeartRate']) &lt;= 1">extension with URL = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationCharacterOfHeartRate': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRatePulseBodyPosition']) &lt;= 1">extension with URL = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRatePulseBodyPosition': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRhythmIrregularity']) &lt;= 1">extension with URL = 'http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRhythmIrregularity': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:value[x] 1</sch:title>
    <sch:rule context="f:Observation/f:value[x]">
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:unit) &gt;= 1">unit: minimum cardinality of 'unit' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:bodySite</sch:title>
    <sch:rule context="f:Observation/f:bodySite">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:method</sch:title>
    <sch:rule context="f:Observation/f:method">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
