package com.baghdadfocusit.webshop3d.repository;

import com.baghdadfocusit.webshop3d.entities.Customer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, UUID> {

}
