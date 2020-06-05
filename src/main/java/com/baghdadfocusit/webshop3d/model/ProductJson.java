package com.baghdadfocusit.webshop3d.model;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductJson {

    @NotNull
    private String productName;
    @NotNull
    private String productPrice;
    @NotNull
    private String categoryId;
    @NotNull
    private String subCategoryId;
    @NotNull
    private MultipartFile productImage;
}
