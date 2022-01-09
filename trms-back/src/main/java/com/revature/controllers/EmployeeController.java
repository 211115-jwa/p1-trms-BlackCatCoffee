package com.revature.controllers;

import java.util.HashMap;
import java.util.Map;

import com.revature.beans.Employee;
import com.revature.exceptions.IncorrectCredentialsException;
import com.revature.exceptions.UsernameAlreadyExistsException;
import com.revature.services.EmployeeService;
import com.revature.services.EmployeeServiceImpl;
import com.revature.services.RequestReviewService;
import com.revature.services.RequestReviewServiceImpl;

import io.javalin.http.Context;
import io.javalin.http.HttpCode;

public class EmployeeController {
	private static EmployeeService empServ = new EmployeeServiceImpl();
	private static RequestReviewService reqRevServ = new RequestReviewServiceImpl();
	
	public static void register(Context ctx) {
		Employee newEmp = ctx.bodyAsClass(Employee.class);
		try {
			newEmp = empServ.register(newEmp);
			Map<String,Integer> newIdMap = new HashMap<>();
			newIdMap.put("empId", newEmp.getEmpId());
			ctx.status(HttpCode.CREATED);
			ctx.json(newIdMap);
		}catch (UsernameAlreadyExistsException e) {
			ctx.status(409);
			ctx.result(e.getMessage());
		}
	}
	
	public static void getUserById(Context ctx) {
		try {
			int empId = Integer.parseInt(ctx.pathParam("empId"));
			Employee emp = empServ.getEmployeeById(empId);
			if(emp !=null) {
				ctx.json(emp);
			}else {
				ctx.status(404);
			}
		}catch (NumberFormatException e) {
			ctx.status(400);
			ctx.result("Employee ID must be a numeric value");
		}
	}
	
	public static void logIn(Context ctx) {
		Map<String,String> credentials = ctx.bodyAsClass(Map.class);
		String username = credentials.get("username");
		String password = credentials.get("password");
		
		try {
			Employee emp = empServ.logIn(username, password);
			String token = Integer.toString(emp.getEmpId());
			ctx.result(token);
		} catch (IncorrectCredentialsException e) {
			ctx.status(404);
			ctx.result(e.getMessage());
		}
	}
	
	public static void checkLogin(Context ctx) {
		String token = ctx.body();
		try {
			int empId = Integer.parseInt(ctx.pathParam("empId"));
			Employee loggedInEmployee = empServ.getEmployeeById(empId);
			if (loggedInEmployee!=null) {
				ctx.json(loggedInEmployee);
			}else {
				ctx.status(HttpCode.UNAUTHORIZED);
			}
		}catch(NumberFormatException e) {
			ctx.status(400);
			ctx.result("Employee Id must be numeric value");
		}
	}
}
