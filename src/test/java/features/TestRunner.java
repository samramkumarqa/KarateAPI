package features;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
	
	@Karate.Test
	Karate getAPITest() {
		return Karate.run("getapi").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate postAPITest() {
		return Karate.run("postapi").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate putAPITest() {
		return Karate.run("putapi").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate deleteAPITest() {
		return Karate.run("deleteapi").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate jsonAPITest() {
		return Karate.run("json").relativeTo(getClass());
	}
}