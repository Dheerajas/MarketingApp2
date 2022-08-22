package com.example.MarketingDemoApp2.services;

import java.util.List;

import com.example.MarketingDemoApp2.entities.Contact;

public interface ContactService {

	Contact createContact(Contact contact);

	public List<Contact> findAllContact();

	Contact findContactById(Long id);

	

}
