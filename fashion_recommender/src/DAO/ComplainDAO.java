package DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.ComplainVO;

public class ComplainDAO {

	public void insert(ComplainVO complainVO) 
	{
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(complainVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			// System.out.println("in dao catch");
			z.printStackTrace();
		}
		
	}

}
