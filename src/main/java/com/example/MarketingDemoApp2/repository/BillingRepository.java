package com.example.MarketingDemoApp2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.MarketingDemoApp2.entities.Billing;
@Repository
public interface BillingRepository extends JpaRepository<Billing, Long> {

}
