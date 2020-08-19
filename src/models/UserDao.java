package models;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;




public class UserDao {

	public static int saveUser(User u)
	
	{
		int total = 0;
		try{
			Session session  = HBSession.getSession();
			Transaction tx = session.beginTransaction();
			
			total = (int)session.save(u);			
			
			tx.commit();
			session.close();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return total;
	}	
	
//	public static User loginUser(User u)
//	{
//		User user = null;
//		try{
//		Session session  = HBSession.getSession();
//		Criteria cr = session.createCriteria(User.class);
//		cr.add(Restrictions.and(Restrictions.eq("email",u.getEmail()),Restrictions.eq("password",u.getPassword())));
//		
//		List<User> l1 = cr.list();
//		Iterator<User> i1 = l1.iterator();
//		
//		while(i1.hasNext())
//		{
//			Object o = (Object)i1.next();
//			User e = (User)o;
//		}
//
//		session.close();
//		
//	}
//	catch(Exception e)
//	{
//		e.printStackTrace();
//	}
//		
//		return user;
//		
//	
//	
//}

	public static User updateUser(User user)
	{
		User us=null;
	     try{
	     
	    Session session=HBSession.getSession();
	    Transaction tx=session.beginTransaction();
	    us=(User)session.merge(user);
	    tx.commit();
	    session.close();
	    
	     }catch(Exception e){  e.printStackTrace(); }
	     return us;
		
	}
	public static int deleteUser(User user)
	{
		User us=null;
	     try{
	     
	    Session session=HBSession.getSession();
	    Transaction tx=session.beginTransaction();
	    session.delete(user);
	    tx.commit();
	    session.close();
	    
	     }catch(Exception e){  e.printStackTrace();
	     return 0;
	}
	     return 1;
		
	}

	//get an admin
	public static int getUser(User user)
	{
		User us=null;
	     try{
	     
	    Session session=HBSession.getSession();
	    Transaction tx=session.beginTransaction();
	    us=(User)session.load(User.class,user.getId());
	    tx.commit();
	    session.close();
	    
	     }catch(Exception e){  e.printStackTrace();
	     return 0;
	}
	     return 1;
		
	}

	public static User validateUser(String email,String password)
	{
		User us=null;
	     try{
	     
	    Session session=HBSession.getSession();
	    Criteria cr=session.createCriteria(User.class);
	    cr.add(Restrictions.and(Restrictions.eq("email", email),Restrictions.eq("password", password)));
	List<User> list=cr.list();
	 us=list.get(0);
	 
	session.close();
	    
	     }catch(Exception e){  e.printStackTrace();
	     
	}
	     return us;
		
	}


	

}