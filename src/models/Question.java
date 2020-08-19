package models;


public class Question {

	private int id;
	private String subject;
	private String question;
private String marks;
private String rdate;
private String unit;
private String answer;
public Question() {
	super();
	// TODO Auto-generated constructor stub
}
public Question(int id, String subject, String question, String marks, String rdate, String unit, String answer) {
	super();
	this.id = id;
	this.subject = subject;
	this.question = question;
	this.marks = marks;
	this.rdate = rdate;
	this.unit = unit;
	this.answer = answer;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public String getQuestion() {
	return question;
}
public void setQuestion(String question) {
	this.question = question;
}
public String getMarks() {
	return marks;
}
public void setMarks(String marks) {
	this.marks = marks;
}
public String getRdate() {
	return rdate;
}
public void setRdate(String rdate) {
	this.rdate = rdate;
}
public String getUnit() {
	return unit;
}
public void setUnit(String unit) {
	this.unit = unit;
}
public String getAnswer() {
	return answer;
}
public void setAnswer(String answer) {
	this.answer = answer;
}
@Override
public String toString() {
	return "Question [id=" + id + ", subject=" + subject + ", question=" + question + ", marks=" + marks + ", rdate="
			+ rdate + ", unit=" + unit + ", answer=" + answer + "]";
}




}