Feature: Create user using post api

Background: 
* url 'https://gorest.co.in'

* def random_string = 
"""
	function(s){
		var text = "";
		var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		for(var i=0; i<s; i++)
			text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
			return text;
	}

"""
* def randomString = random_string(10)
* print randomString

* def requestPayload = 
"""
{
	"name": "tom",
	"gender": "male",
	"status": "active"
	}
"""
	* requestPayload.email = randomString + "@gmail.com"
	* print requestPayload
	

	Scenario: Create a user with the given data
	Given path '/public/v2/users' 
	And request requestPayload
	And header Authorization = 'Bearer b0d22025200b28f8f689282d38896494eccec09288a7155deb1ca8b3dc78b99e'
	When method post 
	Then status 201
	And match $.id == '#present'
	And match $.name =='#present'
	And match $.name == 'tom'
	And match $.email == requestPayload.email