package DAO;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import java.util.*;

import VO.LoginVO;
import VO.RegisterVO;

public class RegisterDAO {

	public void insert(RegisterVO registerVO) 
	{
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(registerVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			
			z.printStackTrace();
		}
		
	}
	
	public List authentication(LoginVO loginVO) {
		// TODO Auto-generated method stub
		Session session = null;
		List list = new ArrayList();
		try {

			// TODO Auto-generated method stub
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query search = session.createQuery("from LoginVO where username='"+loginVO.getUsername() + "' and password='"+ loginVO.getPassword()+"'");
			// Transaction tr = session.beginTransaction();
			// session.save(categoryVO);
			// System.out.println("The list is"+list.size());
			System.out.println("The list is" + list.size());
			list = search.list();
			tr.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
