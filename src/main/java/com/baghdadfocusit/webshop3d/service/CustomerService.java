package com.baghdadfocusit.webshop3d.service;

import com.baghdadfocusit.webshop3d.model.Customer;
import com.baghdadfocusit.webshop3d.repository.CustomerRepository;
import java.time.LocalDate;
import java.util.Optional;
import java.util.UUID;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

  CustomerRepository customerRepository;

  public CustomerService(CustomerRepository customerRepository) {
    this.customerRepository = customerRepository;
  }

  public Iterable<Customer> getAllCustomers() {
    return customerRepository.findAll();
  }

  public Optional<Customer> findCustomer(String customerId) {
    return customerRepository.findById(UUID.fromString(customerId));
  }

  public Customer createNewCustomer(Customer customer) {
    customer.setCreatedAt(LocalDate.now());
    return customerRepository.save(customer);
  }

  public void deleteCustomer(String customerId) {
    customerRepository.deleteById(UUID.fromString(customerId));
  }
}
