package IPL_AUCTION.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import IPL_AUCTION.Dto.Management;
import IPL_AUCTION.Dto.Team;

@Component
public class ManagementDao {
	@Autowired
	EntityManagerFactory e;

	public void save(Management management) {
		EntityManager c = e.createEntityManager();
		EntityTransaction t = c.getTransaction();
		t.begin();
		c.persist(management);
		t.commit();
	}

	public Management login(String username) {
		EntityManager c = e.createEntityManager();
//		Query q = c.createQuery("select x from Management x where username=1?");
//		q.setParameter(1, username);
//		List<Management> list = q.getResultList();
//		return list.get(0);

		List<Management> list = c.createQuery("select x from Management x where username=?1").setParameter(1, username)
				.getResultList();
		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}
	}

}
