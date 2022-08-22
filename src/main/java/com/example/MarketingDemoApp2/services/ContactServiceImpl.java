package com.example.MarketingDemoApp2.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import com.example.MarketingDemoApp2.entities.Contact;
import com.example.MarketingDemoApp2.repository.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactRepository contactRepository;
	
	@Override
	public Contact createContact(Contact contact) {
		Contact contacts = contactRepository.saveAndFlush(contact);
		return contacts;
	}

	@Override
	public List<Contact> findAllContact() {
		List<Contact> contacts = contactRepository.findAll(Sort.by("id").descending());
		return contacts;
	}

	@Override
	public Contact findContactById(Long id) {
		Optional<Contact> findById = contactRepository.findById(id);
		Contact contact = findById.get();
		return contact;
	}

	
	

}
