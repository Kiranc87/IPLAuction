package IPL_AUCTION.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import IPL_AUCTION.Dto.Management;
import IPL_AUCTION.Dto.Player;
import IPL_AUCTION.Dto.Team;

@Controller
public class Auction {
	@Autowired
	Management management;
	@Autowired
	Team team;
	@Autowired
	Player player;

	@PostMapping("signup")
	public ModelAndView signup(@RequestParam String role) {
		ModelAndView andView = new ModelAndView();
		if (role.equals("Management")) {
			andView.setViewName("Management.jsp");
			andView.addObject("management", management);
			return andView;
		} else if (role.equals("Team")) {
			andView.setViewName("Team.jsp");
			andView.addObject("team", team);
			return andView;
		} else {
			andView.setViewName("Player.jsp");
			andView.addObject("player", player);
			return andView;
		}
	}
}
