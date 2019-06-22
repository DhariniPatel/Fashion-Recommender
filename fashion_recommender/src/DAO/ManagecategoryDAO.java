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

public class ManagecategoryDAO {

	public void insert(ManagecategoryVO managecategoryVO) {
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(managecategoryVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			// System.out.println("in dao catch");
			z.printStackTrace();
		}
		
	}

	public List search(ManagecategoryVO managecategoryVO) {
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from ManagecategoryVO where deleteStatus='Active'");
			
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;

	}

	public void delete(ManagecategoryVO managecategoryVO) {
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("update ManagecategoryVO set deleteStatus='Deactivate' where categoryId='"+managecategoryVO.getCategoryId()+"'");
			q.executeUpdate();
			tr.commit();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
	
		
	}

	public List update(ManagecategoryVO managecategoryVO) {
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from ManagecategoryVO where categoryId='"+managecategoryVO.getCategoryId()+"'");
			ls = q.list();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;

	}

	public void finalupdate(ManagecategoryVO managecategoryVO) 
	{
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(managecategoryVO);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			
			z.printStackTrace();
		}
		
		
	}

}
