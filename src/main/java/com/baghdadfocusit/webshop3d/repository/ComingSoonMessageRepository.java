package com.baghdadfocusit.webshop3d.repository;

import com.baghdadfocusit.webshop3d.model.Message;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ComingSoonMessageRepository extends CrudRepository<Message, Long> {
}
