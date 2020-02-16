package com.baghdadfocusit.webshop3d.repository;

import com.baghdadfocusit.webshop3d.model.Customer;
import java.util.UUID;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, UUID> {

}
