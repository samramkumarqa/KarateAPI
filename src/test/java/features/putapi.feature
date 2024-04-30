Feature: Update user using put api

Background: 
* url 'https://gorest.co.in'
* def requestPayload = 
"""
{
	"status": "active",
	"email": "ramkumarfgfgfgw@gmail.com",
	}
	"""
	Scenario: Update a user with the given data
	Given path '/public/v2/users/6874514' 
	And request requestPayload
	And header Authorization = 'Bearer '+tokenID
	When method put
	Then status 200
	And match $.id == '#present'
	And match $.name =='#present'
	And match $.name == 'tom'
	And match $.email == 'ramkumarfgfgfgw@gmail.com'