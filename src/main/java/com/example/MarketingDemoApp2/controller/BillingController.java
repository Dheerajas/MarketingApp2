package com.example.MarketingDemoApp2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.MarketingDemoApp2.entities.Billing;
import com.example.MarketingDemoApp2.services.BillingService;

@Controller
public class BillingController {

	@Autowired
	private BillingService billingService;
	
	@RequestMapping("/saveBill")
	public String saveBill(@ModelAttribute("billing")Billing bill,ModelMap modelMap) {
		Billing saveBillingData = billingService.saveBillingData(bill);
		modelMap.addAttribute("report", saveBillingData);
		return "billingReport";
		
	}
}
