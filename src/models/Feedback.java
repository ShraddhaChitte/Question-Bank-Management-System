package models;

public class Feedback {
private int id;
private String experience;
private String comments;
private String name;
private String email;
public Feedback() {
	super();
	// TODO Auto-generated constructor stub
}
public Feedback(int id, String experience, String comments, String name, String email) {
	super();
	this.id = id;
	this.experience = experience;
	this.comments = comments;
	this.name = name;
	this.email = email;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getExperience() {
	return experience;
}
public void setExperience(String experience) {
	this.experience = experience;
}
public String getComments() {
	return comments;
}
public void setComments(String comments) {
	this.comments = comments;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
@Override
public String toString() {
	return "Feedback [id=" + id + ", experience=" + experience + ", comments=" + comments + ", name=" + name
			+ ", email=" + email + "]";
}


}
