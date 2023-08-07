<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ToDo</title>
    <link rel="stylesheet" href="style.css">
<%--    <script src="index.js"></script>--%>
</head>
<%--<style>--%>
<%--    * {--%>
<%--        margin: 0px;--%>
<%--        padding: 0px;--%>
<%--        box-sizing: border-box;--%>
<%--    }--%>

<%--    body {--%>
<%--        background: linear-gradient(120deg, rgb(226, 207, 129), rgb(232, 139, 97));--%>
<%--        font-family: sans-serif;--%>
<%--        min-height: 100vh;--%>
<%--        color: #fff;--%>
<%--    }--%>
<%--    header {--%>
<%--        font-size: 1.5rem;--%>
<%--    }--%>

<%--    header,--%>
<%--    form {--%>
<%--        min-height: 20vh;--%>
<%--        display: flex;--%>
<%--        align-items: center;--%>
<%--        justify-content: center;--%>
<%--    }--%>

<%--    form input,--%>
<%--    form button {--%>
<%--        padding: 0.5rem;--%>
<%--        border: none;--%>
<%--        background: white;--%>
<%--        font-size: 2rem;--%>
<%--    }--%>

<%--    form button {--%>
<%--        width: 5rem;--%>
<%--        color: rgb(238, 139, 97);--%>
<%--        background: white;--%>
<%--        cursor: pointer;--%>
<%--        transition: all 0.5s ease-out;--%>
<%--    }--%>

<%--    form button:hover {--%>
<%--        color: white;--%>
<%--        background: rgb(238, 139, 97);--%>
<%--    }--%>

<%--    .todo-container {--%>
<%--        display: flex;--%>
<%--        align-items: center;--%>
<%--        justify-content: center;--%>
<%--    }--%>

<%--    .todo-list {--%>
<%--        min-width: 30%;--%>
<%--        list-style: none;--%>
<%--    }--%>
<%--    .todo {--%>
<%--        background: white;--%>
<%--        color: black;--%>
<%--        margin: 0.5rem;--%>
<%--        font-size: 1.5rem;--%>
<%--        display: flex;--%>
<%--        justify-content: space-between;--%>
<%--        align-items: center;--%>
<%--        transition: all 0.5s ease;--%>
<%--    }--%>

<%--    .todo li {--%>
<%--        flex: 1;--%>
<%--    }--%>
<%--    .trash-btn,--%>
<%--    .complete-btn {--%>
<%--        color: white;--%>
<%--        background: #ff6f47;--%>
<%--        font-size: 1rem;--%>
<%--        cursor: pointer;--%>
<%--        border: none;--%>
<%--        padding: 1rem;--%>
<%--    }--%>
<%--    .complete-btn {--%>
<%--        background: rgb(83, 196, 83);--%>
<%--    }--%>
<%--    .fa-check,--%>
<%--    .fa-trash {--%>
<%--        pointer-events: none;--%>
<%--    }--%>
<%--    .todo-item {--%>
<%--        padding: 0rem 0.5rem;--%>
<%--    }--%>
<%--    .completed {--%>
<%--        text-decoration: line-through;--%>
<%--        opacity: 0.5;--%>
<%--    }--%>
<%--    .fall {--%>
<%--        transform: translateY(8rem) rotateZ(20deg);--%>
<%--        opacity: 0;--%>
<%--    }--%>
<%--    /* select button filter button */--%>
<%--    select {--%>
<%--        -web-kit-appearance: none;--%>
<%--        -moz-appearance: none;--%>
<%--        appearance: none;--%>
<%--        outline: none;--%>
<%--        border: none;--%>
<%--        padding: 1rem;--%>
<%--        width: 10rem;--%>
<%--        cursor: pointer;--%>
<%--        color: #ff6f47;--%>
<%--    }--%>

<%--    .select {--%>
<%--        margin: 1rem;--%>
<%--        position: relative;--%>
<%--        overflow: hidden;--%>
<%--    }--%>
<%--    .select:after {--%>
<%--        content: "\25BC";--%>
<%--        position: absolute;--%>
<%--        top: 0;--%>
<%--        right: 0;--%>
<%--        background: #ff6f47;--%>
<%--        color: white;--%>
<%--        padding: 1rem;--%>
<%--        pointer-events: none;--%>
<%--        transition: all 0.3s ease;--%>
<%--    }--%>

<%--    .select:hover::after {--%>
<%--        background: white;--%>
<%--        color: #ff6f47;--%>
<%--    }--%>
<%--</style>--%>
<body>
<section class="vh-100" style="background-color: #eee;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col col-lg-9 col-xl-7">
                <div class="card rounded-3">
                    <div class="card-body p-4">

                        <h4 class="text-center my-3 pb-3">To Do App</h4>

                        <form class="row row-cols-lg-auto g-3 justify-content-center align-items-center mb-4 pb-2">
                            <div class="col-12">
                                <div class="form-outline">
                                    <input type="text" id="form1" class="form-control" />
                                    <label class="form-label" for="form1">Enter a task here</label>
                                </div>
                            </div>

                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>

                            <div class="col-12">
                                <button type="submit" class="btn btn-warning">Get tasks</button>
                            </div>
                        </form>

                        <table class="table mb-4">
                            <thead>
                            <tr>
                                <th scope="col">No.</th>
                                <th scope="col">Todo item</th>
                                <th scope="col">Status</th>
                                <th scope="col">Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Buy groceries for next week</td>
                                <td>In progress</td>
                                <td>
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                    <button type="submit" class="btn btn-success ms-1">Finished</button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Renew car insurance</td>
                                <td>In progress</td>
                                <td>
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                    <button type="submit" class="btn btn-success ms-1">Finished</button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>Sign up for online course</td>
                                <td>In progress</td>
                                <td>
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                    <button type="submit" class="btn btn-success ms-1">Finished</button>
                                </td>
                            </tr>
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
