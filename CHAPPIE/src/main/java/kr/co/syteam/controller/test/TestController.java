package kr.co.syteam.controller.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@RequestMapping("/test/{test_name}")
	public String test(@PathVariable("test_name")String test_name){
		
		logger.info("test");
		return "test/"+test_name;
		
	}
	
}
