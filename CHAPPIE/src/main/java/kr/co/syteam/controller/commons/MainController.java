package kr.co.syteam.controller.commons;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.syteam.commons.URIs;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(URIs.URI_MAIN)
	public String doMain() {
		logger.info("doMain");
		
		
		return URIs.URI_MAIN_FULL;
	}
	
}
