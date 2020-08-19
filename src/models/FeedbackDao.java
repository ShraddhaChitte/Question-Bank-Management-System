package models;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class FeedbackDao {

public static int saveFeedback(Feedback f)
	
	{
		int total = 0;
		try{
			Session session  = new Configuration().configure().buildSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			
			total = (int)session.save(f);			
			
			tx.commit();
			session.close();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return total;
	}	
	
	
}
