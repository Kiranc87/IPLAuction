package IPL_AUCTION.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.HandlesTypes;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import IPL_AUCTION.Dao.PlayerDao;
import IPL_AUCTION.Dao.TeamDao;
import IPL_AUCTION.Dto.Player;
import IPL_AUCTION.Dto.Team;

@Controller
public class PlayerController {
	@Autowired
	Player player;
	@Autowired
	PlayerDao dao;
	@Autowired
	TeamDao dao2;

	@PostMapping("playersignup")
	public ModelAndView savePlayer(@ModelAttribute Player player) {
		player.setStatus("pending");
		ModelAndView andView = new ModelAndView();
		try {
			dao.save(player);
			andView.setViewName("index.jsp");
			andView.addObject("msg", "<h1>Player Account Created Successfully</h1>");
		} catch (Exception e) {
			andView.setViewName("Player.jsp");
			andView.addObject("msg", "<h1>UserName already exists,Login here</h1>");
		}
		return andView;
	}

	@PostMapping("playerlogin")
	public ModelAndView PlayerLogin(@RequestParam String username, @RequestParam String password, HttpSession session) {
		ModelAndView andView = new ModelAndView();
		Player Player = dao.login(username);
		if (Player == null) {
			andView.setViewName("index.jsp");
			andView.addObject("msg", "<h1>Invalid UserName</h1>");
		} else {
			if (Player.getPassword().equals(password)) {
				andView.setViewName("PlayerHome.jsp");
				andView.addObject("msg", "<h1>Invalid UserName</h1>");
				session.setAttribute("pid", Player.getId());
			} else {
				andView.setViewName("PlayerLogin.jsp");
				andView.addObject("msg", "<h1>Invalid Password</h1>");
			}
		}
		return andView;
	}

	@RequestMapping("viewplayers")
	public ModelAndView viewPlayers(@RequestParam("id") int teamid) {
		ModelAndView andView = new ModelAndView();
		Team team = dao2.findById(teamid);
		List<Player> players = team.getPlayers();
		if (players.isEmpty()) {
			andView.setViewName("ViewTeamPlayer.jsp");
			andView.addObject("teamname", team.getTeamname());
			andView.addObject("msg", "No players are in the team");
			return andView;
		} else {
			andView.setViewName("ViewTeamPlayer.jsp");
			andView.addObject("teamname", team.getTeamname());
			andView.addObject("players", players);
			return andView;
		}
	}

	@RequestMapping("viewallplayer")
	public ModelAndView viewAllPlayer() {
		ModelAndView andView = new ModelAndView();
		List<Player> players = dao.getAllPlayer();
		if (players.isEmpty()) {
			andView.setViewName("ManagementHome.jsp");
			andView.addObject("msg", "No players are in the team");
			return andView;
		} else {
			andView.setViewName("ViewAllPlayer.jsp");
			andView.addObject("players", players);
			return andView;
		}
	}

	@RequestMapping("changeplayerstatus")
	public String changePlayerStatus(@RequestParam int id) {
		Player player = dao.getPlayerById(id);
		String Status = player.getStatus();
		if (Status.equals("pending")) {
			player.setStatus("Available");

		} else if (Status.equals("Available")) {
			player.setStatus("pending");
		} else {

		}
		dao.updatePlayer(player);
		return "viewallplayer";
	}

	@RequestMapping("viewavailable")
	public ModelAndView viewAvailable(HttpSession session) {
		Team team = (Team) session.getAttribute("team");
		ModelAndView andView = new ModelAndView();
		List<Player> players = dao.getAvailablePlayer();
		if (players.isEmpty()) {
			andView.setViewName("TeamHome.jsp");
			andView.addObject("msg", "There are no Players present");
			andView.addObject("img", team.getImagelink());
			return andView;
		} else {
			andView.setViewName("BuyPlayer.jsp");
			andView.addObject("players", players);
			return andView;
		}
	}

	@RequestMapping("viewplayerteam")
	public ModelAndView viewPlayerTeam(HttpSession session) {
		int id = (int) session.getAttribute("pid");
		Player player = dao.getPlayerById(id);
		List<Player> p1 = new ArrayList<Player>();
		p1.add(player);
		ModelAndView andView = new ModelAndView();
		andView.setViewName("ViewPlayerTeam.jsp");
		andView.addObject("player", p1);
		return andView;
	}

	@RequestMapping("editplayer")
	public ModelAndView editPlayer(HttpSession session) {
		int id = (int) session.getAttribute("pid");
		ModelAndView andView = new ModelAndView();
		andView.setViewName("EditPlayer.jsp");
		andView.addObject("player", dao.getPlayerById(id));
		return andView;

	}

	@RequestMapping("viewplayersteamhome")
	public ModelAndView viewPlayersTeamHome(@RequestParam("id") int teamid) {
		ModelAndView andView = new ModelAndView();
		Team team = dao2.findById(teamid);
		List<Player> players = team.getPlayers();
		if (players.isEmpty()) {
			andView.setViewName("ViewTeamPlayerTeamHome.jspp");
			andView.addObject("teamname", team.getTeamname());
			andView.addObject("msg", "No players are in the team");
			return andView;
		} else {
			andView.setViewName("ViewTeamPlayerTeamHome.jsp");
			andView.addObject("teamname", team.getTeamname());
			andView.addObject("players", players);
			return andView;
		}
	}

	@RequestMapping("update")
	public String viewPlayersTeamHome(@RequestParam int id, @RequestParam String name, @RequestParam String role,
			@RequestParam String country, @RequestParam double price) {
		player.setId(id);
		player.setName(name);
		player.setRole(role);
		player.setCountry(country);
		player.setPrice(price);

		dao.updatePlayer(player);

		return "viewplayerteam";
	}

}
