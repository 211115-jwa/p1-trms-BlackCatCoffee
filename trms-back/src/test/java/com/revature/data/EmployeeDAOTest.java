package com.revature.data;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import com.revature.beans.Department;
import com.revature.beans.Employee;
import com.revature.beans.Role;
import com.revature.data.postgres.EmployeePostgres;
import com.revature.data.EmployeeDAO;


public class EmployeeDAOTest {
	private static EmployeeDAO empDAO = new EmployeePostgres();
	private static Employee mockEmp = new Employee();
	private static Department dept = new Department();
	private static Employee sup = mockEmp;
	
	
	
	@Test
	public void createTest() {
		Employee emp = new Employee();
		emp.setSupervisor(empDAO.getById(2));
		System.out.println(emp.getSupervisor());
		int genId = empDAO.create(emp);
		assertNotEquals(0,genId);
	}
	
	
	@Test
	public void getByIdWhenIdExists() {
		int idInput = 1;
		Employee idOutput = empDAO.getById(idInput);
		assertEquals(1, idOutput.getEmpId());  
	}
	
	
	
}
