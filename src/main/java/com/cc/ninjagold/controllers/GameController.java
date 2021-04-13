package com.cc.ninjagold.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GameController {
	@RequestMapping("/gold")
	public String gold() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/play", method=RequestMethod.POST)
	public String play(@RequestParam(value="location") String location, HttpSession session) {
		if (location.equals("farm")) {
			session.setAttribute("location", "farm");
		} else if (location.equals("cave")) {
			session.setAttribute("location", "cave");
		} else if (location.equals("house")) {
			session.setAttribute("location", "house");
		} else if (location.equals("casino")) {
			session.setAttribute("location", "casino");
		}
		return "redirect:/gold";
	}
}
