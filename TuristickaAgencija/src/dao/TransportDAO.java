package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import model.Destinacija;

public class TransportDAO {

	SessionFactory factory = new Configuration().configure().buildSessionFactory();

	public List<Destinacija> vratiSveDestinacije() {

		List<Destinacija> destinacije = new ArrayList<Destinacija>();
		Session session = factory.getCurrentSession();
		// TODO Auto-generated method stub
		session.beginTransaction();
		try {
			String sql = "FROM Destinacija";
			Query query = session.createQuery(sql);
			destinacije = query.getResultList();
			session.getTransaction().commit();

			return destinacije;

		} catch (Exception e) {
			session.getTransaction().rollback();

			return null;
		}

	}
}