package com.csis3275.controller_sjo_48;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csis3275.model_sjo_48.Bicycle_sjo_48;

@Controller
public class Controller_sjo_48 {
	@RequestMapping("/")
	public String presentForm(ModelMap model) {
		 model.addAttribute("bicycleData", new Bicycle_sjo_48());
		 return "AssignmentView_sjo_48";
	}
	
	@PostMapping("/confirmation")
	 public String forcaseWeather(Bicycle_sjo_48 bicycleData,BindingResult
	result, ModelMap model) {
		 System.out.println("Model: " + bicycleData.getModel());
		 System.out.println(bicycleData.getPrice());
		 model.addAttribute("firstName", bicycleData.getFirstName());
		 model.addAttribute("lastName", bicycleData.getLastName());
		 model.addAttribute("modelName", bicycleData.getModelName());
		 model.addAttribute("modelPrice", bicycleData.modelPrice);
		 model.addAttribute("finalPrice", bicycleData.getPrice());
		 model.addAttribute("senior", bicycleData.getSenior());
		 model.addAttribute("member", bicycleData.getMember());
		 model.addAttribute("seniorDiscount", bicycleData.seniorDiscount);
		 model.addAttribute("memberDiscount", bicycleData.memberDiscount);
		 model.addAttribute("bicycleData", new Bicycle_sjo_48());
	
		 return "AssignmentView_sjo_48";
	 }
}
