package com.example.MarketingDemoApp2.utility;

import org.springframework.stereotype.Component;

@Component
public interface EmailService {

	public void sendSimpleMessage(String to, String subject, String text) ;
}
