package com.example.MarketingDemoApp2.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.example.MarketingDemoApp2.entities.Lead;
import com.example.MarketingDemoApp2.repository.LeadRepository;

@Service
public class LeadServiceImpl implements LeadService {

	@Autowired
	private LeadRepository leadRepo;
	
	@Override
	public Lead createLeads(Lead lead) {
		 Lead leads = leadRepo.saveAndFlush(lead);
		return leads;
	}

	@Override
	public List<Lead> findAllLeads() {
		List<Lead> findAll = leadRepo.findAll(Sort.by("id").descending());
		return findAll;
	}

	@Override
	public Lead findLeadById(Long id) {
		   Optional<Lead> findById = leadRepo.findById(id);
		   Lead lead = findById.get();
		   return lead;
	}

	@Override
	public void deleteLead(Long id) {
		leadRepo.deleteById(id);
	}
	

}
