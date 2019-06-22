package DAO;

import org.hibernate.Session;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CountryVO;

public class CountryDAO 
{

	public void insert(CountryVO countryVO) 
	{
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(countryVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			// System.out.println("in dao catch");
			z.printStackTrace();
		}
	}

	public List search(CountryVO countryVO) 
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


	public void delete(CountryVO countryVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("update CountryVO set status='Deactivate' where countryId='"+countryVO.getCountryId()+"'");
			q.executeUpdate();
			tr.commit();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		
	}
	
	public List update(CountryVO countryVO) 
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from CountryVO where countryId='"+countryVO.getCountryId()+"'");
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;

	}


	public void finalupdate(CountryVO countryVO) 
	{
		
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(countryVO);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			
			z.printStackTrace();
		}
		
		
	}

}
