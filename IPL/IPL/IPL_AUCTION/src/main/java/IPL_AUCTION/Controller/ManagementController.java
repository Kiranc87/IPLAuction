package IPL_AUCTION.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import IPL_AUCTION.Dao.ManagementDao;
import IPL_AUCTION.Dto.Management;
import IPL_AUCTION.Dto.Team;

@Controller
public class ManagementController {
	@Autowired
	Management management;
	@Autowired
	ManagementDao dao;

	@PostMapping("managementsignup")
	public ModelAndView saveManagement(@ModelAttribute Management management) {
		ModelAndView andView = new ModelAndView();
		try {
			dao.save(management);
			andView.setViewName("index.jsp");
			andView.addObject("msg", "<h1>Management Account Created Successfully</h1>");
		} catch (Exception e) {
			andView.setViewName("Management.jsp");
			andView.addObject("msg", "<h1>UserName already exists,Login here</h1>");
		}
		return andView;
	}

	@PostMapping("managementlogin")
	public ModelAndView managementLogin(@RequestParam String username, @RequestParam String password) {
		ModelAndView andView = new ModelAndView();
		Management management = dao.login(username);
		if (management == null) {
			andView.setViewName("index.jsp");
			andView.addObject("msg", "<h1>Invalid UserName</h1>");
		} else {
			if (management.getPassword().equals(password)) {
				andView.setViewName("ManagementHome.jsp");
				andView.addObject("msg", "<h1>Login Success</h1>");
			} else {
				andView.setViewName("ManagementLogin.jsp");
				andView.addObject("msg", "<h1>Invalid Password</h1>");
			}
		}
		return andView;
	}
	
}
