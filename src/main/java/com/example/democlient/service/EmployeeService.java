package com.example.democlient.service;

import com.example.democlient.entity.Employee;
import retrofit2.Call;
import retrofit2.http.*;

import java.util.List;

public interface EmployeeService {
    @GET("api/employees")
    public Call<List<Employee>> getEmployees();

    @GET("api/employees/{id}")
    public Call<Employee> getEmployeeDetails(@Path("id") Integer id);

    @POST("api/employees")
    public Call<Employee> save(@Body Employee employee);

    @PUT("api/employees/{id}")
    public Call<Boolean> update(@Path("id") Integer id, @Body Employee employee);

    @DELETE("api/employees/{id}")
    public Call<Boolean> delete(@Path("id") Integer id);
}
