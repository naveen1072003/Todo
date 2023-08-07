package com.todo.app.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.Id;

@Data
@Getter
@Setter
@ToString
public class exampleDTO {
    private int id;
    private String name;
}
