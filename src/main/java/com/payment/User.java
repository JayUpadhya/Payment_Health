package com.payment;

//Class representing a user with payment details
public class User {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String section;
    private String method;
    private String amount;
    
 // Parameterized constructor
	public User(int id, String name, String email, String phone, String section, String method, String amount) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.section = section;
		this.method = method;
		this.amount = amount;
	}
	// Getters and Setters for the private variables
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
    
    
    
	
    
    
	
    
    
   
	

	  
}
