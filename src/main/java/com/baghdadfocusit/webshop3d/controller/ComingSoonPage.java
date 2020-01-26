package com.baghdadfocusit.webshop3d.controller;

import com.baghdadfocusit.webshop3d.service.MessageService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api")
public class ComingSoonPage {

    MessageService messageService;

    public ComingSoonPage(final MessageService messageService) {
        this.messageService = messageService;
    }

    @GetMapping("/message")
    public String getMessage() {
        return messageService.getMessage();
    }
}
