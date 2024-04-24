Feature: GET API feature

Scenario: get user details
Given url baseUrl+'/public/v2/users'
And path '6859600'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actualName = jsonResponse.name
* def actualId = jsonResponse.id
* def actualEmail = jsonResponse.email

* print actualName
* match actualName == 'Krishnadasa Varman CPA'
* match actualId == 6859626
* match actualEmail == 'varman_cpa_krishnadasa@boyle.test'


Scenario: get user details
Given url baseUrl+'/public/v2/users'
And path '30'
When method GET
Then status 404