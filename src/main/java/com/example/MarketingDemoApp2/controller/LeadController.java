package com.example.MarketingDemoApp2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.MarketingDemoApp2.entities.Contact;
import com.example.MarketingDemoApp2.entities.Lead;
import com.example.MarketingDemoApp2.services.ContactService;
import com.example.MarketingDemoApp2.services.LeadService;

@Controller
public class LeadController {
	
	@Autowired
	private LeadService leadService;

	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/home")
	public String loadHome(ModelMap modelMap) {
		List<Lead> findAllLeads = leadService.findAllLeads();
		modelMap.addAttribute("leads", findAllLeads);
		return "leadsHome";
	}
	
	@RequestMapping("/create")
	public String loadPage() {
		return "createLead";
	}
	
	@RequestMapping("/createLead")
	public String createLead(@ModelAttribute("lead")Lead lead,ModelMap modelMap) {
		leadService.createLeads(lead);
		List<Lead> findAllLeads = leadService.findAllLeads();
		modelMap.addAttribute("leads", findAllLeads);
		return "leadsInfo";
	}
	@RequestMapping("/findById")
	public String findLeadById(@RequestParam("id") Long id,ModelMap modelMap) {
		 Lead findLeadById = leadService.findLeadById(id);
		modelMap.addAttribute("leads", findLeadById);  
		return "leadData";
	}
	
	@RequestMapping("/listLeads")
	public String listAllLeads(ModelMap modelMap) {
		List<Lead> findAllLeads = leadService.findAllLeads();
		modelMap.addAttribute("leads", findAllLeads);
		return "leadsInfo";
	}
	
	@RequestMapping("/convertLead")
	public String convertLead(@RequestParam("id") Long id,ModelMap modelMap) {
		Lead leads = leadService.findLeadById(id);
//		convert lead to contact
		Contact contact=new Contact();
		contact.setFirstName(leads.getFirstName());
		contact.setLastName(leads.getLastName());
		contact.setEmail(leads.getEmail());
		contact.setMobile(leads.getMobile());
		contact.setLeadSource(leads.getLeadSource());
		contactService.createContact(contact);
		
//		delete leads
		leadService.deleteLead(id);
		
//		Find all contacts
		List<Contact> allContact = contactService.findAllContact();
		modelMap.addAttribute("contacts", allContact);
		return "contactResult";
		
	}
	
}
