package models;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class QuestionDao {

public static int saveQuestion(Question q)
	
	{
		int total = 0;
		try{
			Session session  = new Configuration().configure().buildSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			
			total = (int)session.save(q);			
			
			tx.commit();
			session.close();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return total;
	}	
	
}
