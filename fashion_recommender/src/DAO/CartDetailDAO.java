package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CartDetailVO;
import VO.CityVO;
import VO.LoginVO;

public class CartDetailDAO {

	public void insert(CartDetailVO cartdetailVO) {
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(cartdetailVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			
			z.printStackTrace();
		}


		
	}

	public List SearchCart(LoginVO loginVO) {
		// TODO Auto-generated method stub
		List ls = new ArrayList();
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("from CartDetailVO where loginVO = '"+loginVO.getLoginId()+"' and deleteStatus='active' ");
			ls = q.list();
			
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
		return ls;
	}

	public void deteleProduct(CartDetailVO cartDetailVO) {
		
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();	
			Query q = session.createQuery("update CartDetailVO set deleteStatus='deactive' where cartId = '"+cartDetailVO.getCartId()+"'");
			q.executeUpdate();
			Transaction transaction = session.beginTransaction();
			transaction.commit();
			session.close();
		}
		catch (HibernateException e) 
		{
			e.printStackTrace();
		}
	}

}
