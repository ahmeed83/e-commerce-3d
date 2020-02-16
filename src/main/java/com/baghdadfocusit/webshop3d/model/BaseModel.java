package com.baghdadfocusit.webshop3d.model;

import java.time.LocalDate;
import java.util.UUID;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.validation.constraints.NotNull;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

@Data
@MappedSuperclass
public class BaseModel {

  @Id
  @GeneratedValue
  private UUID id;
  @NotNull
  @DateTimeFormat
  private LocalDate createdAt;
  @DateTimeFormat
  private LocalDate updatedAt;
}