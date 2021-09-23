package com.csis3275.model_sjo_48;

public class Bicycle_sjo_48 {
	private String firstName;
	private String lastName;
	private int model;
	private double model1 = 100;
	private double model2 = 200;
	private double model3 = 300;
	private String modelName;
	public boolean senior;
	public boolean member;
	public double modelPrice;
	public double seniorDiscount;
	public double memberDiscount;
	public double finalPrice;
	
	public String getFirstName() { return firstName; }
	public String getLastName() { return lastName; }
	public int getModel() { return model; }
	public boolean getSenior() { return senior; };
	public boolean getMember() { return member; };
	
	public void setFirstName(String firstName) { this.firstName = firstName; }
	public void setLastName(String lastName) { this.lastName = lastName; }
	public void setModel(int model) { this.model = model; }
	public void setSenior(boolean senior) { this.senior = senior; };
	public void setMember(boolean member) { this.member = member; };
	
	public String getModelName() {
		if(this.model == 1) {
			modelName = "Utility Bike";
		} else if(this.model == 2) {
			modelName = "Fixed Gear Bike";
		} else {
			modelName = "Mountain Bike";
		}
		
		return modelName;
	}
	
	public double getPrice() {
		if(this.model == 1) {
			modelPrice = model1;
		} else if(this.model == 2) {
			modelPrice = model2;
		} else {
			modelPrice = model3;
		}

		Member_sjo_48 member = new Member_sjo_48();
		SeniorCitizen_sjo_48 senior = new SeniorCitizen_sjo_48();

		seniorDiscount = modelPrice - modelPrice * senior.getDiscount(this.senior);
		memberDiscount = modelPrice - seniorDiscount;
		memberDiscount -= (modelPrice - seniorDiscount) * member.getDiscount(this.member);
		finalPrice = modelPrice * senior.getDiscount(this.senior);
		finalPrice = finalPrice * member.getDiscount(this.member);
		
		return finalPrice;
	}
}