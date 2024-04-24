function fn(){
var env = karate.env;
if (!env){
	env = 'dev';
}
var config = {
	env: env,
	myVarName: 'hello karate',
	baseUrl: 'https://gorest.co.in',
	tokenID: 'b0d22025200b28f8f689282d38896494eccec09288a7155deb1ca8b3dc78b99e'
}
if (env == 'dev'){
	//customize
	//e.g. config.foo = 'bar';
} else if (env == 'e2e') {
	//customize
}
return config;
}