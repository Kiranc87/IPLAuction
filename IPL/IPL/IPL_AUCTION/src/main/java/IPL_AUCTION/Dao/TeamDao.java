package IPL_AUCTION.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Component;

import IPL_AUCTION.Dto.Team;

@Component
public class TeamDao {

	EntityManagerFactory e = Persistence.createEntityManagerFactory("dev");
	EntityManager c = e.createEntityManager();
	EntityTransaction t = c.getTransaction();

	public void save(Team team) {
		t.begin();
		c.persist(team);
		t.commit();
	}

	public Team login(String username) {
		List<Team> list = c.createQuery("select x from Team x where username=?1").setParameter(1, username)
				.getResultList();
		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}
	}

	public List<Team> getALLteam() {
		return c.createQuery("select x from Team x ").getResultList();
	}

	public Team findById(int id) {
		return c.find(Team.class, id);
	}

	public void update(Team team) {
		t.begin();
		c.merge(team);
		t.commit();
	}

	public List<Team> viewteambyname(String teamname) {
		
		return  c.createQuery("select x from Team x where teamname=?1").setParameter(1, teamname)
				.getResultList();
	}
}
