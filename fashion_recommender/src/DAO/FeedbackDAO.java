package DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.FeedbackVO;

public class FeedbackDAO {

	public void insert(FeedbackVO feedbackVO) 
	
	{
		
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(feedbackVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			// System.out.println("in dao catch");
			z.printStackTrace();
		}
		
	}

}
