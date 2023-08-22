package com.todo.app.Controller;

import com.todo.app.Entity.ToDo;
import com.todo.app.Service.ToDoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


@Controller
@RequestMapping("/api/v1")
public class ToDoController {

    @Autowired
    ToDoService service;

//    @RequestMapping("/index")
//    public String startPage(){
//        return "start";
//    }

    @PostMapping("/addTasks")
    public String addTasks(ToDo toDo){
        System.out.println(toDo.toString());
        service.saveOrUpdateItem(toDo);
        return "redirect:/api/v1/start";
    }
    @GetMapping("/getAllTasks")
    public String getAllTasks(Model model){
           List<ToDo> toDos = service.getAllToDoTasks();
           model.addAttribute("list",toDos);
           System.out.println(toDos.toString());
           return "start";
    }

    @GetMapping("/getTask/{id}")
    public ResponseEntity<ToDo> getTaskById(@PathVariable long id){
        return new ResponseEntity<>(service.getToDoTaskById(id), HttpStatus.OK);
    }



    @PostMapping("/updateTaskStatus/{id}")
    public String updateTaskStatus(@PathVariable long id){
        return service.updateTaskStatus(id);
    }

    @PostMapping("/deleteTask/{id}")
    public String deleteTask(@PathVariable long id){
        return service.deleteToDoTask(id);
    }



}
