package models;

public class Demo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 User us= new User();
		 us.setId(1);
	
		 us.setEmail("abcd@gmail.com");
		 us.setMobile("1234");
		 us.setPassword("abcd");


		int result = UserDao.saveUser(us);
		      if(result>0)
		     {
			System.out.println("Successfully created a record");
		     }
		      else
		      {
		    		System.out.println("Could not register");

		      }
	}

}
