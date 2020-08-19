package models;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class ProductDao {

public static int addProduct(Product p)
	
	{
		int total = 0;
		try{
			Session session  = HBSession.getSession();
			Transaction tx = session.beginTransaction();
			
			total = (int)session.save(p);			
			
			tx.commit();
			session.close();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return total;
	}	


public static Product updateProduct(Product product)
{
	Product prd=null;
     try{
     
    Session session=HBSession.getSession();
    Transaction tx=session.beginTransaction();
    prd=(Product)session.merge(product);
    tx.commit();
    session.close();
    
     }catch(Exception e){  e.printStackTrace(); }
     return prd;
	
}
public static int deleteProduct(Product product)
{
	Product prd=null;
     try{
     
    Session session=HBSession.getSession();
    Transaction tx=session.beginTransaction();
    session.delete(product);
    tx.commit();
    session.close();
    
     }catch(Exception e){  e.printStackTrace();
     return 0;
}
     return 1;
	
}


public static Product getProduct(Product product)
{
	Product p=null;
     try{
     
    Session session=HBSession.getSession();
    Transaction tx=session.beginTransaction();
    p=(Product)session.load(Product.class,product.getId());
    tx.commit();
    session.close();
    
     }catch(Exception e){  e.printStackTrace();

}
     return p;
	
}




public static List<Product> getProducts()
{
	
	Session ss=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
	Transaction tx = ss.beginTransaction();
	Query q1 = ss.createQuery("from Product");
		
	List <Product> l1 = q1.list();
	
	System.out.println("Query executed");
	
	Iterator<Product> i1 = l1.iterator();
	
	while(i1.hasNext())
	{
		Product prd= (Product)i1.next();
		
	}
	
	return l1;
}

}
