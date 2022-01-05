package com.revature.services;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

import java.util.HashSet;
import java.util.Set;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import com.revature.beans.Comment;
import com.revature.beans.Employee;
import com.revature.beans.Reimbursement;
import com.revature.beans.Role;
import com.revature.beans.Status;
import com.revature.data.CommentDAO;
import com.revature.data.EmployeeDAO;
import com.revature.data.EventTypeDAO;
import com.revature.data.GradingFormatDAO;
import com.revature.data.ReimbursementDAO;
import com.revature.data.StatusDAO;


@ExtendWith(MockitoExtension.class)
public class RequestReviewServiceTest {
	@Mock
	private StatusDAO statusDao;
	@Mock
	private EmployeeDAO empDao;
	@Mock
	private ReimbursementDAO reqDao;
	
	
	
	
	@InjectMocks
	private RequestReviewService reqRevServ = new RequestReviewServiceImpl();
	
	
	private static Set<Reimbursement> mockPendingReimbursements;
	
	
	@BeforeAll
	public static void mockPendingReimbursements() {
		mockPendingReimbursements = new HashSet<>();
		for(int i=1;i<=5;i++) {
			Reimbursement reim = new Reimbursement();
			mockPendingReimbursements.add(reim);
		}
	}
	
	@Test
	public void getPendingReimbursementsDeptHead() {
		Employee emp = new Employee();
		Role role = new Role();
		Status status = new Status();
		role.setRoleId(1);
		emp.setRole(role);
		status.setStatusId(4);
		when(statusDao.getById(4)).thenReturn(status);
		when(reqDao.getByStatus(status)).thenReturn(mockPendingReimbursements);
		Set<Reimbursement> acutalReimbursements = reqRevServ.getPendingReimbursements(emp);
		assertEquals(mockPendingReimbursements,acutalReimbursements);
	}
	
}
