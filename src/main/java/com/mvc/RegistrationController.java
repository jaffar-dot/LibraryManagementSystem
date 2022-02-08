package com.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegistrationController {

	RegistrationDao regdao = new RegistrationDao();
	LoginDao dao = new LoginDao();

	@RequestMapping("/registration")
	public ModelAndView newRegistration(HttpServletRequest req, HttpServletResponse res) {
		String reg_id = req.getParameter("reg_id");
		String student_name = req.getParameter("name");
		String branch = req.getParameter("branch");
		String contact = req.getParameter("contact");
		String email = req.getParameter("email");
		String username = req.getParameter("uname");
		String password = req.getParameter("pass");

		int result = regdao.register_user(reg_id, student_name, branch, contact, email, username, password);

		ModelAndView mv = new ModelAndView();
		if (result == 1) {
			String result1 = dao.validate(username, password);
			if (result1.equals("Success")) {
				mv.setViewName("home.jsp");
				mv.addObject("name", student_name);
				return mv;
			} else {
				mv.setViewName("register1.jsp");
				return mv;
			}

		} else {
			mv.setViewName("register1.jsp");
			return mv;
		}

	}
}
