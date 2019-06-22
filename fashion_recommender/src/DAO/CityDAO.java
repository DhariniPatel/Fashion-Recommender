package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CityVO;
import VO.StateVO;

public class CityDAO {

	

	public List loadCountry(CityVO cityVO) 
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from CountryVO ");
			//Query q1 = session.createQuery("from StateVO ");
			
			ls = q.list();
			//ls = q1.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;

	}

	public void insert(CityVO cityVO) {
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(cityVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			
			z.printStackTrace();
		}


		
	}

	public List loadState(CityVO cityVO)
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from StateVO ");
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;
	}

	public List search(CityVO cityVO) 
	{
		
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from CityVO ");
			
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}


		return ls;

	}

	public void delete(CityVO cityVO) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("update CityVO set deletestatus='Deactivate' where cityId='"+cityVO.getCityId()+"'");
			q.executeUpdate();
			tr.commit();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		

		
	}

	public void finalupdate(CityVO cityVO) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			session.update(cityVO);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			
			z.printStackTrace();
		}
		
	
		
	}

	public List update(CityVO cityVO) 
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from CityVO where cityId='"+cityVO.getCityId()+"'");
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;
	}

}
