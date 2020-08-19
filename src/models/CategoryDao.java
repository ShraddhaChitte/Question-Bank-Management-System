package models;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;



public class CategoryDao {

public static int addCategory(Category c)
	
	{
		int total = 0;
		try{
			Session session  = HBSession.getSession();
			Transaction tx = session.beginTransaction();
			
			total = (int)session.save(c);			
			
			tx.commit();
			session.close();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return total;
	}	


public static Category updateCategory(Category category)
{
	Category cat=null;
     try{
     
    Session session=HBSession.getSession();
    Transaction tx=session.beginTransaction();
    cat=(Category)session.merge(category);
    tx.commit();
    session.close();
    
     }catch(Exception e){  e.printStackTrace(); }
     return cat;
	
}
public static int deleteCategory(Category category)
{
	Category cat=null;
     try{
     
    Session session=HBSession.getSession();
    Transaction tx=session.beginTransaction();
    session.delete(category);
    tx.commit();
    session.close();
    
     }catch(Exception e){  e.printStackTrace();
     return 0;
}
     return 1;
	
}



//get an admin
public static Category getCategory(Category category)
{
	Category c=null;
     try{
     
    Session session=HBSession.getSession();
    Transaction tx=session.beginTransaction();
    c=(Category)session.load(Category.class,category.getId());
    tx.commit();
    session.close();
    
     }catch(Exception e){  e.printStackTrace();

}
     return c;
	
}


public static Category getCategoriees()
{
	Category cat= null;
	try{
	Session session  = HBSession.getSession();
	Criteria cr = session.createCriteria(User.class);
	
	
	List<Category> l1 = cr.list();
	Iterator<Category> i1 = l1.iterator();
	
	while(i1.hasNext())
	{
		Object o = (Object)i1.next();
		Category c= (Category)o;
	}

	session.close();
	
}
catch(Exception e)
{
	e.printStackTrace();
}
	
	return cat;
	


}


public static List<Category> getCategories()
{
	
	Session ss=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
	Transaction tx = ss.beginTransaction();
	Query q1 = ss.createQuery("from Category");
	
//	select count(*) from student as s
//	select s.name,s.email from student as s
//	delete from student as s where s.name in ('stud1','stud2')
	
	List <Category> l1 = q1.list();
	
	System.out.println("Query executed");
	
	Iterator<Category> i1 = l1.iterator();
	
	while(i1.hasNext())
	{
		Category cat= (Category)i1.next();
		
	}
	
	return l1;
}


}
	

