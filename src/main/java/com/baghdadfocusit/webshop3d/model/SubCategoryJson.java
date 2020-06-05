package com.baghdadfocusit.webshop3d.model;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;
import java.util.UUID;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SubCategoryJson {

    private UUID id;
    @NotNull
    private String subCategoryName;
    @NotNull
    private String categoryId;
}
