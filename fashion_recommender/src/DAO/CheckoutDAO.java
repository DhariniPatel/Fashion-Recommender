package DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CheckoutVO;

public class CheckoutDAO {

	public void submit(CheckoutVO checkoutVO) {
		
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(checkoutVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			
			z.printStackTrace();
		}
		
	}

}
