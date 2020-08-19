package models;

public class Product {

	private int id;
	private String model;
	private String brand;
	private float price;
	private String category;
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
		
	public Product(int id, String model, String brand, float price, String category) {
		super();
		this.id = id;
		this.model = model;
		this.brand = brand;
		this.price = price;
		this.category = category;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", model=" + model + ", brand=" + brand + ", price=" + price + ", category="
				+ category + "]";
	}
	
	
	
}
