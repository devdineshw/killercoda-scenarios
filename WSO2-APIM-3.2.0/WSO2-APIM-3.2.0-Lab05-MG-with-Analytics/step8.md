Create a working directory

`mkdir projects`{{execute}}

`cd projects/`{{execute}}

Create a micro gateway project using the toolkit

`micro-gw init petstore`{{execute}}

Download the OpenAPI definition to the project

`wget -P petstore/api_definitions https://raw.githubusercontent.com/wso2/product-microgateway/master/samples/petstore_basic.yaml`{{execute}}

Build the project

`micro-gw build petstore`{{execute}}

Run the build artifact

`gateway /root/projects/petstore/target/petstore.jar`{{execute}}

Get a new token

try the API

`curl -X GET "https://localhost:9095/petstore/v1/pet/1" -H "accept: application/xml" -H "Authorization:Bearer eyJhbGciOiJSUzI1NiIsICJ0eXAiOiJqd3QiLCAia2lkIjoiYmFsbGVyaW5hIn0=.eyJzdWIiOiJhZG1pbiIsICJpc3MiOiJodHRwczovL2xvY2FsaG9zdDo5MDk1L2FwaWtleSIsICJpYXQiOjE1ODAxMTE4ODgsICJqdGkiOiIxZjQxZTM3MC0zMTRiLTQ4MmEtYTBjYS04YmU0ZDE2MGIxOTUiLCAiYXVkIjoiaHR0cDovL29yZy53c28yLmFwaW1ndC9nYXRld2F5IiwgImtleXR5cGUiOiJQUk9EVUNUSU9OIiwgImFsbG93ZWRBUElzIjpbeyJuYW1lIjoiU3dhZ2dlciBQZXRzdG9yZSBOZXciLCAidmVyc2lvbiI6IjEuMC4wIn0sIHsibmFtZSI6IlN3YWdnZXIgUGV0c3RvcmUgTmV3IiwgInZlcnNpb24iOiJ2MSJ9LCB7Im5hbWUiOiJNeUFQSSIsICJ2ZXJzaW9uIjoiKiJ9XX0=.EUP5_H7AoXgPsxL2TkDlrlnHq2F3VFwfGxQaS2CSj8lE3lP2HgfMgY1osAODegK7t0mWNZqkfkfw5xLfqYjBXikszyGabHxB-FX3GKOYNw-fFLOhSSxVD4lDOBdFpmyhGjeE8RTyrMl-HY3Apjid92sO5VlW6M-y3QTYzrmm8Gs_C3Z5z2hxpAWHXo-uNF0iVm4sdz7j4rgOxGf6HJKgXeZ47c3CDNKaNA9pRZd_ULaMvUvcmXOGJ7Xh21Pqmh1qQkT4OJm1T-2dCx8fju9YHH1Sdc3UGDDu7mK2m1_8Z14CpZOOPQK_zCp2bmjonQgJ-CTJENjfNK37dNY1a2xomw==" -k`{{execute}}
