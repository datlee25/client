package com.example.democlient.controller;

import com.example.democlient.entity.Employee;
import com.example.democlient.retrofit.RetrofitGenerator;
import com.example.democlient.service.EmployeeService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetEmployeeController extends HttpServlet {
    private final EmployeeService productService;

    public GetEmployeeController() {
        productService = RetrofitGenerator.createService(EmployeeService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Employee> employees = productService.getEmployees().execute().body();
        req.setAttribute("listEmployee", employees);
        req.getRequestDispatcher("/employees/employee-list.jsp").forward(req, resp);
    }
}
