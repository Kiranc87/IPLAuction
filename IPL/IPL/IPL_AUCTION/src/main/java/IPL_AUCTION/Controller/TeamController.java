package IPL_AUCTION.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.Session;

import IPL_AUCTION.Dao.PlayerDao;
import IPL_AUCTION.Dao.TeamDao;
import IPL_AUCTION.Dto.Player;
import IPL_AUCTION.Dto.Team;
import net.bytebuddy.asm.Advice.Return;

@Controller
public class TeamController {
	@Autowired
	Team team;
	@Autowired
	TeamDao dao;
	@Autowired
	PlayerDao dao2;

	@PostMapping("teamsignup")
	public ModelAndView saveManagement(@ModelAttribute Team team) {
		dao.save(team);
		ModelAndView andView = new ModelAndView();
		try {
			dao.save(team);
			andView.setViewName("index.jsp");
			andView.addObject("msg", "<h1>Team Account Created Successfully</h1>");
		} catch (Exception e) {
			andView.setViewName("Team.jsp");
			andView.addObject("msg", "<h1>TeamName already exists,Login here</h1>");
		}
		return andView;
	}

	@PostMapping("teamlogin")
	public ModelAndView TeamLogin(@RequestParam String username, @RequestParam String password, HttpSession session) {
		ModelAndView andView = new ModelAndView();
		Team team = dao.login(username);
		if (team == null) {
			andView.setViewName("index.jsp");
			andView.addObject("msg", "<h1>Invalid UserName</h1>");
		} else {
			if (team.getPassword().equals(password)) {
				if (team.isStatus()) {
					session.setAttribute("team", team);
					andView.setViewName("TeamHome.jsp");
					andView.addObject("msg", "<h1>Login Success</h1>");
					andView.addObject("img", team.getImagelink());
				} else {
					andView.setViewName("TeamHome.jsp");
					andView.addObject("msg", "<h1>Contact Management for access</h1>");
				}
			} else {
				andView.setViewName("TeamLogin.jsp");
				andView.addObject("msg", "<h1>Invalid Password</h1>");
			}
		}
		return andView;
	}

	@GetMapping("viewallteam")
	public ModelAndView viewAllTeam() {
		ModelAndView andView = new ModelAndView();
		List<Team> list = dao.getALLteam();
		if (list.isEmpty()) {
			andView.setViewName("ManagementHome.jsp");
			andView.addObject("msg", "There are no Team present");
		} else {
			andView.setViewName("ViewAllTeam.jsp");
			andView.addObject("list", list);
		}
		return andView;
	}

	@RequestMapping("changestatus")
	public String changesStatus(@RequestParam int id) {
		Team team = dao.findById(id);
		if (team.isStatus()) {
			team.setStatus(false);
		} else {
			team.setStatus(true);
			dao.update(team);
		}
		return "viewallteam";
	}

	@RequestMapping("addamount")
	public String addAmount(@RequestParam int id, @RequestParam double amount) {
		Team team = dao.findById(id);
		team.setWallet(team.getWallet() + amount);
		dao.update(team);
		return "viewallteam";
	}

	@RequestMapping("buyplayers")
	public ModelAndView buyPlayers(HttpSession session, @RequestParam int id) {
		Team team = (Team) session.getAttribute("team");
		ModelAndView andView = new ModelAndView();
		Player player = dao2.getPlayerById(id);
		if (player.getPrice() > team.getWallet()) {
			andView.setViewName("TeamHome.jsp");
			andView.addObject("msg", "<h1>Insufficent Funds</h1>");
			andView.addObject("img", team.getImagelink());
			return andView;
		} else {
			team.setWallet(team.getWallet() - player.getPrice());
			player.setStatus("Sold");
			player.setTeam(team);
			List<Player> players = team.getPlayers();
			players.add(player);
			team.setPlayers(players);

//			List<Player> players2=new ArrayList<Player>();
			dao.update(team);
			dao2.updatePlayer(player);

			andView.setViewName("TeamHome.jsp");
			andView.addObject("msg", "<h1>player Bought Successfully</h1>");
			andView.addObject("img", team.getImagelink());
			return andView;
		}
	}

	@RequestMapping("add")
	public String add(@RequestParam int id) {
		Player player = dao2.getPlayerById(id);
		if (player.getPrice() < 10000) {
			player.setPrice(player.getPrice() + 500);
		}
		return "viewavailable";
	}

	@RequestMapping("sub")
	public String sub(@RequestParam int id) {
		Player player = dao2.getPlayerById(id);
		if (player.getPrice() > 10000) {
			player.setPrice(player.getPrice() + 500);
		}
		return "viewavailable";
	}

	@RequestMapping("viewteam")
	public ModelAndView viewteam(HttpSession session) {
		List<Team> list = dao.getALLteam();
		ModelAndView andView = new ModelAndView();
		if (list.isEmpty()) {
			andView.setViewName("TeamHome.jsp");
			andView.addObject("msg", "There are no Team present");
		} else {
			andView.setViewName("ViewAllTeamInTeamHome.jsp");
			andView.addObject("list", list);
			session.setAttribute("team", list);
		}
		return andView;

	}

	@RequestMapping("viewteambyname")
	public ModelAndView viewteambyname() {
		ModelAndView andView = new ModelAndView();
		List<Team> list = dao.getALLteam();
		andView.setViewName("ViewTeamByName.jsp");
		andView.addObject("team", list);
		return andView;
	}

	@RequestMapping("fetchusingteamname")
	public ModelAndView fetchteambyname(@RequestParam String teamname) {
		ModelAndView andView = new ModelAndView();
		List<Team> team=dao.viewteambyname(teamname);
		andView.setViewName("ViewMyTeam.jsp");
		andView.addObject("team", team);
		return andView;		
	}
}
