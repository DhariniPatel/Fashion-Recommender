package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CountryVO;
import VO.StateVO;

public class StateDAO
{
	public List loadCountry(StateVO stateVO) 
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from CountryVO ");
			
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;

	}

	public void insert(StateVO stateVO) 
	{
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(stateVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			
			z.printStackTrace();
		}

		
	}



	public List search(StateVO stateVO)
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

	public void delete(StateVO stateVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("update StateVO set deletestatus='Deactivate' where stateId='"+stateVO.getStateId()+"'");
			q.executeUpdate();
			tr.commit();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		
	}

	public List update(StateVO stateVO) 
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from StateVO where stateId='"+stateVO.getStateId()+"'");
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;

	}	

	public void finalupdate(StateVO stateVO) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			session.update(stateVO);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			
			z.printStackTrace();
		}
		
		
	}

	
	public List loads(CountryVO countryVO) {
		
		List ls=new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session sess = sessionFactory.openSession();
			Query q = sess.createQuery("from StateVO where countryVO='"+ countryVO.getCountryId() + "'");
			ls=q.list();
			sess.close();
		} 
		catch (HibernateException e)
		{
			e.printStackTrace();
		}
		return ls;
	}


	}


