package com.csis3275.model_sjo_48;

public class SeniorCitizen_sjo_48 implements interface_sjo_48 {
	private double demograph;
	private double seniorDiscount;
	
	public double getStatus(boolean senior) {
		if(senior) {
			demograph = 1;
		} else {
			demograph = 0;
		}
		
		return demograph;
	}
	
	public double getDiscount(boolean senior) {
		if(senior) {
			seniorDiscount = 0.8;
		} else {
			seniorDiscount = 1;
		}
		
		return seniorDiscount;
	}
}
