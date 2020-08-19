package models;

public class Category {

	private int id;
	private String cat_title;
	
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Category(int id, String cat_title) {
		super();
		this.id = id;
		this.cat_title = cat_title;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCat_title() {
		return cat_title;
	}
	public void setCat_title(String cat_title) {
		this.cat_title = cat_title;
	}

	@Override
	public String toString() {
		return "CategoryPojo [id=" + id + ", cat_title=" + cat_title + "]";
	}
	
	
	
}
