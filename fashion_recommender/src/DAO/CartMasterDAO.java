package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CartMasterVO;
import VO.CityVO;

public class CartMasterDAO {

	public void insert(CartMasterVO cartmasterVO) {
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(cartmasterVO);
			tr.commit();
			
		} 
		catch (Exception z) 
		{
			
			z.printStackTrace();
		}


		
	}

	public List<CartMasterVO> searchById(CartMasterVO cartMasterVO1) {
		List<CartMasterVO> ls = new ArrayList<>();
		
		try{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Query q=session.createQuery("from CartMasterVO where loginVO = '"+cartMasterVO1.getLoginVO().getLoginId()+"'");
			ls = q.list();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return ls;
	}

	

}
