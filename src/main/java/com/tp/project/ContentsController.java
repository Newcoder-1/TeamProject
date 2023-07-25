package com.tp.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContentsController {
	
	@RequestMapping(value = "/Ballad.do", method = RequestMethod.GET)
	public String ballad() {
		return "Ballad";
	}
	@RequestMapping(value = "/Classic.do", method = RequestMethod.GET)
	public String classic() {
		return "Classic";
	}
	@RequestMapping(value = "/Rock.do", method = RequestMethod.GET)
	public String Rock() {
		return "Rock";
	}
	@RequestMapping(value = "/R&B.do", method = RequestMethod.GET)
	public String RaB() {
		return "R&B";
	}
	@RequestMapping(value = "/Jazz.do", method = RequestMethod.GET)
	public String Jazz() {
		return "Jazz";
	}
	@RequestMapping(value = "/J-POP.do", method = RequestMethod.GET)
	public String J_POP() {
		return "J-POP";
	}
}
