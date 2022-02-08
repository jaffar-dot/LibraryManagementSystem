package com.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DisplayController {

	LoginDao dao = new LoginDao();

	@RequestMapping("/login")
	public ModelAndView showingContent(HttpServletRequest req, HttpServletResponse res) {

		String uname = req.getParameter("u");
		String pass = req.getParameter("p");
		String result = dao.validate(uname, pass);

		ModelAndView mv = new ModelAndView();
		if (result.equals("Success")) {
			mv.setViewName("home.jsp");
			mv.addObject("name", uname);
			return mv;
		} else {
			mv.setViewName("index1.jsp");
			return mv;
		}

	}

}
