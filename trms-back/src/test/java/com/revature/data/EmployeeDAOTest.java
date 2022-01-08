package com.revature.data;

import org.junit.jupiter.api.Test;

import java.util.Set;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import com.revature.beans.Department;
import com.revature.beans.Employee;
import com.revature.beans.Role;
import com.revature.data.postgres.EmployeePostgres;
import com.revature.utils.DAOFactory;
import com.revature.data.EmployeeDAO;
import static org.junit.jupiter.api.Assertions.*;


public class EmployeeDAOTest {
	private static EmployeeDAO empDao = DAOFactory.getEmployeeDAO();
	private static Employee mockEmp = new Employee();
	private static Employee sup = mockEmp;
	
	
	
	@Test
	public void createTest() {
		Employee emp = new Employee();
		int genId = empDao.create(emp);
		assertNotEquals(0,genId);
	}
	
	@Test
	public void getAll() {
		Set<Employee> Employees = empDao.getAll();
		assertNotNull(Employees);
	}
	
	@Test
	public void getByIdWhenIdExists() {
		int idInput = 45;
		Employee idOutput = empDao.getById(idInput);
		assertEquals(45, idOutput.getEmpId());  
	}
	
	
	@Test
	public void getByIdWhenIdDoesNotExist() {
		int idInput = -1;
		assertNull(empDao.getById(idInput));
	}
	
	@Test
	public void getUsernameWhenUserNameExists() {
		String user = "auphill5";
		Employee userOut = empDao.getByUsername(user);
		assertEquals(user,userOut.getUsername());
	}
	
	@Test
	public void getUserNameWhenUserNameDoesNotExist() {
		Employee notUser = empDao.getByUsername("askdjha;ah");
		assertNull(notUser);
	}
	
	@Test
	public void updateEmployeepassword() {
		Employee toUpdate = empDao.getById(40);
		toUpdate.setPassword("viaerovrh");
		empDao.update(toUpdate);
		assertEquals("viaerovrh",empDao.getById(40).getPassword());
	}
	
	
	
	
}
