package com.csis3275.model_sjo_48;

public class Member_sjo_48 implements interface_sjo_48 {
	private double memberStatus;
	private double memberDiscount;
	
	public double getStatus(boolean member) {
		if(member) {
			memberStatus = 1;
		} else {
			memberStatus = 0;
		}
		
		return memberStatus;
	}
	
	public double getDiscount(boolean member) {
		if(member) {
			memberDiscount = 0.7;
		} else {
			memberDiscount = 1;
		}
		
		return memberDiscount;
	}
}