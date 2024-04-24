Feature: Create user using post api

Background: 
* url 'https://gorest.co.in'
* def requestPayload = 
"""
{
	"name": "tom",
	"email": "tom21d@gmail.com",
	"gender": "male",
	"status": "active"
	}
	"""
	Scenario: Create a user with the given data
	Given path '/public/v2/users' 
	And request requestPayload
	And header Authorization = 'Bearer b0d22025200b28f8f689282d38896494eccec09288a7155deb1ca8b3dc78b99e'
	When method post 
	Then status 201
	And match $.id == '#present'
	And match $.name =='#present'
	And match $.name == 'tom'
	And match $.email == 'tom21d@gmail.com'