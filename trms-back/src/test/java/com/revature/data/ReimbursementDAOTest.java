package com.revature.data;

import com.revature.utils.DAOFactory;

import org.junit.jupiter.api.Test;

import com.revature.beans.Employee;
import com.revature.beans.GradingFormat;
import com.revature.beans.Reimbursement;
import com.revature.data.postgres.EmployeePostgres;
import com.revature.data.postgres.ReimbursementPostgres;
import static org.junit.jupiter.api.Assertions.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

public class ReimbursementDAOTest {
	private static ReimbursementDAO reqDao = DAOFactory.getReimbursementDAO();
	private EmployeeDAO empDao = new EmployeePostgres();
	
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
}
