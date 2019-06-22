package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AddproductVO;

public class AddproductDAO {

	public List loadCategory(AddproductVO addproductVO) 
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from ManagecategoryVO ");
			
			
			ls = q.list();
			
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;
	}

	public List loadSubcategory(AddproductVO addproductVO) 
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from ManagesubcategoryVO ");
			
			
			ls = q.list();
			
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;
	}

	public void insert(AddproductVO addproductVO) 
	{
		
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(addproductVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			
			z.printStackTrace();
		}
	}

	public List search(AddproductVO addproductVO)
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from AddproductVO ");
			
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}


		return ls;

	}

	public void delete(AddproductVO addproductVO) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("update AddproductVO set deletestatus='Deactivate' where productId='"+addproductVO.getProductId()+"'");
			q.executeUpdate();
			tr.commit();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		
	}

	public List update(AddproductVO addproductVO) 
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from AddproductVO where productId='"+addproductVO.getProductId()+"'");
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;

	}

	public void finalupdate(AddproductVO addproductVO) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			session.update(addproductVO);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			
			z.printStackTrace();
		}
		
	}

}
