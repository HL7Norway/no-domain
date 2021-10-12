# no-domain-VitalSigns

Nasjonale FHIR områdeprofiler for vitalparametre

## Plan og fremdrift

Utviklingen planlegges og følges opp i [prosjektets kanban board](https://github.com/HL7Norway/no-domain/projects/2)  
Se om bruken av Epic, Feature, PBI på siden om [smidig prosjekt](https://github.com/HL7Norway/no-domain/blob/master/docs/smidig-prosjekt.md)  

## GoFSH

~~~bash
GoFSH . -o .. -t json-and-xml
~~~

## SUSHI

~~~bash
docker run --rm -v e:\GitRepo\no-domain\VitalSigns:/data thomiz/fhir-build sushi /data
~~~
