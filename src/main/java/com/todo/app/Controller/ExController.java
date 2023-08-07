package com.todo.app.Controller;

import com.todo.app.dto.exampleDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class ExController
{
    @RequestMapping("/form")
    public String page(){
        return "example";
        }
    @PostMapping("/example")
    @ResponseBody
    public String getObj(exampleDTO exam){
        System.out.println(exam.toString());
        return "Data came!";
    }
}
