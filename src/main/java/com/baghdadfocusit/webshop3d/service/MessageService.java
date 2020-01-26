package com.baghdadfocusit.webshop3d.service;

import com.baghdadfocusit.webshop3d.model.Message;
import com.baghdadfocusit.webshop3d.repository.ComingSoonMessageRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class MessageService {

    ComingSoonMessageRepository comingSoonMessageRepository;

    public MessageService(final ComingSoonMessageRepository comingSoonMessageRepository) {
        this.comingSoonMessageRepository = comingSoonMessageRepository;
    }

    public String getMessage() {
        Long id = 1L;
        final Optional<Message> byId = comingSoonMessageRepository.findById(id);
        return byId.get().getMessage();
    }
}
