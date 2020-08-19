package models;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

public class HBSession {

	static Session getSession() throws Exception
	{
		return new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
	}
	
}
