package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import VO.ManagesubcategoryVO;

public class UserproductDAO {

	public List search(ManagesubcategoryVO managesubcategoryVO) {

		List ls = new ArrayList();
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			 Query q = session.createQuery("from AddproductVO where managesubcategoryVO='"+managesubcategoryVO.getSubcategoryId()+"' " );
			 ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}
}
