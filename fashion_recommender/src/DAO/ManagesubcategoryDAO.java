package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.ManagecategoryVO;
import VO.ManagesubcategoryVO;

public class ManagesubcategoryDAO 
{
	public List loadCategory(ManagesubcategoryVO managesubcategoryVO) 
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from ManagecategoryVO");
			ls = q.list();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return ls;
	}

	public void insert(ManagesubcategoryVO managesubcategoryVO)
	{
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(managesubcategoryVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			
			z.printStackTrace();
		}

		
	}

	public List search(ManagesubcategoryVO managesubcategoryVO) 
	{
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from ManagesubcategoryVO where deleteStatus='Active'");
			
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}


		return ls;
	}

	public void delete(ManagesubcategoryVO managesubcategoryVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("update ManagesubcategoryVO set deletestatus='Deactivate' where subcategoryId='"+managesubcategoryVO.getSubcategoryId()+"'");
			q.executeUpdate();
			tr.commit();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		
	}

	public List update(ManagesubcategoryVO managesubcategoryVO) {
		
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from ManagesubcategoryVO where subcategoryId='"+managesubcategoryVO.getSubcategoryId()+"'");
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;
	}

	public void finalupdate(ManagesubcategoryVO managesubcategoryVO) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			session.update(managesubcategoryVO);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			
			z.printStackTrace();
		}
		

		
	}

	public List loadp(ManagecategoryVO managecategoryVO) {
		
		List ls=new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session sess = sessionFactory.openSession();
			Query q = sess.createQuery("from ManagesubcategoryVO where managecategoryVO='"+ managecategoryVO.getCategoryId() + "'");
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
