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
    private ToDoService service;

    @RequestMapping("/index")
    public String startPage(){
        return "start";
    }

    @GetMapping("/getAllTasks")
    public ResponseEntity<List<ToDo>> getAllTasks(){
           List<ToDo> toDos = service.getAllToDoTasks();
           return new ResponseEntity<>(toDos, HttpStatus.OK);
    }

    @GetMapping("/getTask/{id}")
    public ResponseEntity<ToDo> getTaskById(@PathVariable long id){
        return new ResponseEntity<>(service.getToDoTaskById(id), HttpStatus.OK);
    }

    @PostMapping("/addTasks")
    public String addTasks(@ModelAttribute ToDo toDo){
        System.out.println(toDo);
        service.saveOrUpdateItem(toDo);
        return "Added successfully!";
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
