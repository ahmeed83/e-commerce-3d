package com.baghdadfocusit.webshop3d.exception.category;

import com.baghdadfocusit.webshop3d.exception.ApplicationException;
import org.springframework.http.HttpStatus;

public class SubCategoryAlreadyExistsException extends ApplicationException {

    public SubCategoryAlreadyExistsException() {
        super("Sub category already exists", HttpStatus.CONFLICT);
    }
}
