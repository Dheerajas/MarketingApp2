package com.example.MarketingDemoApp2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.MarketingDemoApp2.entities.Contact;
import com.example.MarketingDemoApp2.services.ContactService;

@Controller
public class ContactController {

	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/contacts")
	public String getContacts( ModelMap modelMap) {
		List<Contact> AllContact = contactService.findAllContact();
		modelMap.addAttribute("contacts", AllContact);
		return "contactResult";
	}
	
	@RequestMapping("/getContactById")
	public String getContactById(@RequestParam("id")Long id,ModelMap modelMap) {
		Contact findContact = contactService.findContactById(id);
		modelMap.addAttribute("contacts", findContact); 
		return "generateBill";
	}
}
