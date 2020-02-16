package com.baghdadfocusit.webshop3d.controller.management;

import com.baghdadfocusit.webshop3d.model.Customer;
import com.baghdadfocusit.webshop3d.service.CustomerService;
import java.time.LocalDate;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Customer Management controller.
 */
@RestController
@RequestMapping("management/v1/customers")
public class CustomerManagementController {

  public static final String HAS_ROLE_ADMIN_AND_EMPLOYEE = "hasAnyRole('ROLE_ADMIN, ROLE_EMPLOYEE')";

  private final CustomerService customerService;

  public CustomerManagementController(CustomerService customerService) {
    this.customerService = customerService;
  }

  @GetMapping
  @PreAuthorize(HAS_ROLE_ADMIN_AND_EMPLOYEE)
  public Iterable<Customer> getAllCustomers() {
    return customerService.getAllCustomers();
  }

  @PutMapping("{customerId}")
  @PreAuthorize(HAS_ROLE_ADMIN_AND_EMPLOYEE)
  public Customer updateCustomer(@RequestBody Customer updatedCustomer, @PathVariable String customerId) {
    return customerService.findCustomer(customerId)
        .map(customer -> {
          customer.setName(updatedCustomer.getName());
          customer.setEmail(updatedCustomer.getEmail());
          customer.setPhone(updatedCustomer.getPhone());
          customer.setAddress(updatedCustomer.getAddress());
          customer.setUpdatedAt(LocalDate.now());
          return customerService.saveCustomer(customer);
        }).orElseThrow(() -> new IllegalArgumentException("No Customer found!"));
  }

  @DeleteMapping("{customerId}")
  @PreAuthorize(HAS_ROLE_ADMIN_AND_EMPLOYEE)
  public ResponseEntity deleteCustomer(@PathVariable String customerId) {
    //TODO: if customer is not there return a proper exception with 404
    customerService.deleteCustomer(customerId);
    return ResponseEntity.accepted().build();
  }
}
