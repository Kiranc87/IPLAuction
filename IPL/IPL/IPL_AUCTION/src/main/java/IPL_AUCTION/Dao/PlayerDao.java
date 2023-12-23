package IPL_AUCTION.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Component;

import IPL_AUCTION.Dto.Player;

@Component
public class PlayerDao {
	EntityManagerFactory e = Persistence.createEntityManagerFactory("dev");
	EntityManager c = e.createEntityManager();
	EntityTransaction t = c.getTransaction();

	public void save(Player player) {
		t.begin();
		c.persist(player);
		t.commit();
	}

	public Player login(String username) {
		List<Player> list = c.createQuery("select x from Player x where username=?1").setParameter(1, username)
				.getResultList();
		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}
	}

	public Player getPlayerById(int id) {
		return c.find(Player.class, id);
	}

	public void updatePlayer(Player player) {
		t.begin();
		c.merge(player);
		t.commit();
		
	}

	public List<Player> getAllPlayer() {
		return c.createQuery("select x from Player x ").getResultList();
	}

	public List<Player> getAvailablePlayer() {
		return c.createQuery("select x from Player x where status='Available'").getResultList();
		
	}

	public List<Player> getUnsoldPlayer() {
		return c.createQuery("select x from Player x where status='UnSold'").getResultList();

	}
}
