# JGI's Studies Portfolio


### GitHub repo: [code-examples-java](./README.md)

This GitHub repo includes code examples for the DocuSign eSignature REST API, Rooms API, Click API, and Monitor API. To switch between API code examples, in the application.json file, change the `DS_API_NAME` setting from `ESIGNATURE` to `ROOMS`, `CLICK`, or `MONITOR`.  


## Introduction

a web application that helps to manage maps created on ArcGIS, this web app uses DocuSign and ArcGIS apis.
each map study is considered as a list of map versions. (incremental versions)
The map creator send an envelope to a reviewer via email, this envelope contains the last version of the map.
If the reviewer validates that version, he will sign the document otherwise he can create a ticket, so we can fix the issue or improve the precision.
The reviewer can draw on the map and add some notes while creating the ticket / issue



## Eclipse instructions for Windows    

1. you need, first your account DocuSign Developer, create a secret for this app
1. create a copy of the file src/main/resources/application.example.json and save the copy as src/main/resources/application.json.
1. in the file src/main/resources/application.json :

	  1. "Gateway_Account_Id": "account-id",
	  1. "authorization.code.grant.client.client-id": "client-id",
	  1. "authorization.code.grant.client.client-secret": "client-secret",
  
  
1. mvn package`
1. java -jar target/code-examples-java-1.0-SNAPSHOT.war
