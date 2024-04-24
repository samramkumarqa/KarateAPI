Feature: GET API headers feature

Scenario: pass the user request with headers_Part1
Given header Content-Type = 'application/json'
And header Accept-Encoding = 'gzip, deflate, br'
And header Connection = 'Keep-Alive'
And header Expect = '100-continue'
And header User-Agent = 'PostmanRuntime/7.32.2'


When url baseUrl+'/public/v1/users'
And path '6859434'
When method GET
Then status 200
* print response

Scenario: pass the user request with headers_Part2
* def request_headers = {Content-Type: 'application/json', Connection: 'Keep-Alive', User-Agent: 'PostmanRuntime/7.32.2'}	 
Given headers request_headers
When url baseUrl+'/public/v1/users'
And path '6859434'
When method GET
Then status 200
* print response

Scenario: pass the user request with headers_Part3
* configure headers = {Content-Type: 'application/json', Connection: 'Keep-Alive', User-Agent: 'PostmanRuntime/7.32.2'}	 
When url baseUrl+'/public/v1/users'
And path '6859434'
When method GET
Then status 200
* print response