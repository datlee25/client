<%@ page import="java.util.List" %>
<%@ page import="com.example.democlient.entity.Employee" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Employee> listEmployee = (List<Employee>) request.getAttribute("listEmployee");
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="/images/logo.png" type="image/x-icon" sizes="20x20">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <title>List Products</title>
</head>
<body>
<div class="container">
    <jsp:include page="/_header.jsp"/>
    <h1 class="text-center">List Products</h1>
    <div class="d-flex justify-content-end mb-5">
        <a class="btn button-custom" href="/democlient_war_exploded/employees/create"><i class="bi bi-plus-circle"></i> Create</a>
    </div>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Salary</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <% for (Employee employee : listEmployee) { %>
        <tr>
            <td><%=employee.getId()%>
            </td>
            <td><%=employee.getName()%>
            </td>
            <td><%=employee.getSalary()%>
            </td>
            <td>
                <a href="/democlient_war_exploded/employees/update?id=<%= employee.getId() %>" type="button"
                   class="btn-action-icon btn-custom-edit"><i
                        class="bi bi-pencil-square"></i></a>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
