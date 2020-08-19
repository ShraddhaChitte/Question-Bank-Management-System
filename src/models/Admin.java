package models;

public class Admin {
private String email;
private String password;
private int id;
public Admin() {
	super();
	// TODO Auto-generated constructor stub
}
public Admin(String email, String password, int id) {
	super();
	this.email = email;
	this.password = password;
	this.id = id;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
@Override
public String toString() {
	return "Admin [email=" + email + ", password=" + password + ", id=" + id + "]";
}




}
