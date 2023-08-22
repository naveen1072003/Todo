<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.todo.app.Entity.ToDo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>ToDo</title>
    <link rel="stylesheet" href="style.css">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <!-- MDB -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.1/mdb.min.css"
            rel="stylesheet"
    />
<%--    <script src="index.js"></script>--%>
</head>
<body>
<section class="vh-100" style="background-color: #eee;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col col-lg-9 col-xl-7">
                <div class="card rounded-3">
                    <div class="card-body p-4">

                        <h4 class="text-center my-3 pb-3">To Do App</h4>

                            <form  action="addTasks" method="post">
                            <div class="col-12 ">
                                <div class="form-outline">
                                    <input type="text" id="form1" name="content" class="form-control" />
                                    <label class="form-label" for="form1">Enter a task here</label>
                                </div>
                            </div>

                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <form action="getAllTasks" method="get">
                            <div class="col-12">
                                <button type="submit" class="btn btn-warning">Get tasks</button>
                            </div>
                        </form>
<%--                        <%--%>
<%--                            List<ToDo> ll;--%>
<%--                        %>--%>
                        <p>${list}</p>
<%--                        </form>--%>
                        <table class="table mb-4">
                            <thead>
                            <tr>
                                <th scope="col">S.No</th>
                                <th scope="col">Todo item</th>
                                <th scope="col">Status</th>
                                <th scope="col">Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                           <c:forEach items="${list}" var="item">
                            <tr>
                                <td><c:out value="${item.get(0).getId()}" /></td>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-danger" value="">Delete</button>
                                    <button type="submit" class="btn btn-success ms-1" value="">Finished</button>
                                </td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
