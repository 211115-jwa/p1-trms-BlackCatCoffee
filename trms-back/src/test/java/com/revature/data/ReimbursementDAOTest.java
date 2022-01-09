package com.revature.data;

import com.revature.utils.DAOFactory;

import org.junit.jupiter.api.Test;

import com.revature.beans.Employee;
import com.revature.beans.GradingFormat;
import com.revature.beans.Reimbursement;
import com.revature.beans.Status;

import static org.junit.jupiter.api.Assertions.*;


import java.util.Set;

public class ReimbursementDAOTest {
	private static EventTypeDAO eventTypeDao = DAOFactory.getEventTypeDAO();
	private static GradingFormatDAO gradFormatDao = DAOFactory.getGradingFormatDAO();
	private static StatusDAO statusDao = DAOFactory.getStatusDAO();
	private static ReimbursementDAO reqDao = DAOFactory.getReimbursementDAO();
	private static CommentDAO commentDao = DAOFactory.getCommentDAO();
	private static EmployeeDAO empDao = DAOFactory.getEmployeeDAO();
	
	@Test
	public void createTest() {
		Reimbursement reim = new Reimbursement();
		Employee emp = new Employee();
		GradingFormat grade = new GradingFormat();
		grade.setFormatId(2);
		emp.setEmpId(80);
		reim.setGradingFormat(grade);
		reim.setRequestor(emp);
		int generatedId = reqDao.create(reim);
		System.out.println(reim.getReqId());
		assertNotEquals(0,generatedId);
	}
	
	@Test
	public void getByIdTest() {
		int idInput = 2;
		Reimbursement reimOutput = reqDao.getById(idInput);
		assertEquals(2,reimOutput.getReqId());
	}
	
	/*@Test
	public void getAllTest() {
		Set<Reimbursement> reimbursements = reqDao.getAll();
		assertNotNull(reimbursements);
	}*/
	
	
	@Test
	public void getByRequestorTest() {
		Employee emp = new Employee();
		emp.setEmpId(41);
		Set<Reimbursement> getByRequestor = reqDao.getByRequestor(emp);
		assertNotNull(getByRequestor);
	}
	
	@Test
	public void updateTest() {
		Reimbursement reim = reqDao.getById(3);
		reim.setRequestor(empDao.getById(40));
		reim.setCost(300.00);
		reqDao.update(reim);
		System.out.println(reim.getCost());
		assertEquals(300.00,reim.getCost());
	}
	
	
	@Test
	public void getByStatusTest() {
		Status state = statusDao.getById(4);
		Set<Reimbursement> getByStatus = reqDao.getByStatus(state);
		assertNotNull(getByStatus);
	}
}
