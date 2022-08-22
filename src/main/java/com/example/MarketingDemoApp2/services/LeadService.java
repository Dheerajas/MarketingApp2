package com.example.MarketingDemoApp2.services;

import java.util.List;

import com.example.MarketingDemoApp2.entities.Lead;

public interface LeadService {

	Lead createLeads(Lead lead);

	public List<Lead> findAllLeads();

	Lead findLeadById(Long id);

	void deleteLead(Long id);

}
