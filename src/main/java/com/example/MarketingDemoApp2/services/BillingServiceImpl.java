package com.example.MarketingDemoApp2.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MarketingDemoApp2.entities.Billing;
import com.example.MarketingDemoApp2.repository.BillingRepository;

@Service
public class BillingServiceImpl implements BillingService {

	@Autowired
	private BillingRepository billingRepo;

	@Override
	public Billing saveBillingData(Billing bill) {
		Billing saveAndFlush = billingRepo.saveAndFlush(bill);
		return saveAndFlush;
	}
	
	
}
