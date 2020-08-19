package models;

	import java.util.Iterator;
	import java.util.List;

	import org.hibernate.Criteria;
	import org.hibernate.Session;
	import org.hibernate.Transaction;
	import org.hibernate.criterion.Restrictions;




	public class AdminDao {

		public static int saveAdmin(Admin a)
		
		{
			int total = 0;
			try{
				Session session  = HBSession.getSession();
				Transaction tx = session.beginTransaction();
				
				total = (int)session.save(a);			
				
				tx.commit();
				session.close();
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return total;
		}	


		public static Admin updateAdmin(Admin admin)
		{
			Admin ad=null;
		     try{
		     
		    Session session=HBSession.getSession();
		    Transaction tx=session.beginTransaction();
		    ad=(Admin)session.merge(admin);
		    tx.commit();
		    session.close();
		    
		     }catch(Exception e){  e.printStackTrace(); }
		     return ad;
			
		}
		public static int deleteAdmin(Admin admin)
		{
			Admin ad=null;
		     try{
		     
		    Session session=HBSession.getSession();
		    Transaction tx=session.beginTransaction();
		    session.delete(admin);
		    tx.commit();
		    session.close();
		    
		     }catch(Exception e){  e.printStackTrace();
		     return 0;
		}
		     return 1;
			
		}

		//get an admin
		public static int getAdmin(Admin admin)
		{
			Admin ad=null;
		     try{
		     
		    Session session=HBSession.getSession();
		    Transaction tx=session.beginTransaction();
		    ad=(Admin)session.load(Admin.class,admin.getId());
		    tx.commit();
		    session.close();
		    
		     }catch(Exception e){  e.printStackTrace();
		     return 0;
		}
		     return 1;
			
		}

		public static Admin validateAdmin(String email,String password)
		{
			Admin ad=null;
		     try{
		     
		    Session session=HBSession.getSession();
		    Criteria cr=session.createCriteria(Admin.class);
		    cr.add(Restrictions.and(Restrictions.eq("email", email),Restrictions.eq("password", password)));
		List<Admin> list=cr.list();
		 ad=list.get(0);
		 
		session.close();
		    
		     }catch(Exception e){  e.printStackTrace();
		     
		}
		     return ad;
			
		}


		

	}
	

