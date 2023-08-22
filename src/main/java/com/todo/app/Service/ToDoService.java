package com.todo.app.Service;

import com.todo.app.Entity.ToDo;
import com.todo.app.Repository.ToDoRepository;
import com.todo.app.dto.modelDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ToDoService {

    @Autowired
    ToDoRepository repo;
    public List<ToDo> getAllToDoTasks(){
        return repo.findAll();
    }
    public ToDo getToDoTaskById(long id){
        return repo.findById(id).get();
    }

    public String updateTaskStatus(long id){
        ToDo toDo = getToDoTaskById(id);
        toDo.setStatus("Completed!");
        saveOrUpdateItem(toDo);
        return "Task Updated!";
    }

    public String saveOrUpdateItem(ToDo toDo) {
        System.out.println(toDo.toString());
        toDo.setStatus("In progress");
        repo.save(toDo);
        return "Task Saved!";
    }

    public String deleteToDoTask(long id){
        if(getToDoTaskById(id) != null){
            repo.deleteById(id);
            return "Deleted!";
        }
        return "Deletion failed!";
    }
}
