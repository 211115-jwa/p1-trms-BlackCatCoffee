package com.revature.services;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.HashSet;
import java.util.Set;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import com.revature.beans.Comment;
import com.revature.beans.Employee;
import com.revature.beans.Reimbursement;
import com.revature.data.CommentDAO;
import com.revature.data.EmployeeDAO;
import com.revature.data.ReimbursementDAO;
import com.revature.utils.DAOFactory;

@ExtendWith(MockitoExtension.class)
public class EmployeeServiceTest {
	@Mock
	private CommentDAO commentDao;
	@Mock
	private EmployeeDAO empDao;
	@Mock
	private ReimbursementDAO reqDao;
	
	@InjectMocks
	private EmployeeService empServ = new EmployeeServiceImpl();
	
	private static Set<Comment> mockAvailableComments;
	
	@BeforeAll
	public static void mockAvailableCommentsSetup() {
		mockAvailableComments = new HashSet<>();
		for (int i=1; i<=5; i++) {
			Comment comment = new Comment();
			comment.setCommentId(i);
			mockAvailableComments.add(comment);
		}
	}
	
	@Test
	public void addNewCommentSuccessfully() {
		Comment comment = new Comment();
		when(commentDao.create(comment)).thenReturn(10);
		int newComment = empServ.addComment(comment);
		assertNotEquals(0,newComment);
	}
	
	@Test
	public void getEmployeeByIdSuccessfully() {
		Employee empl = new Employee();
		empl.setEmpId(17);
		
		when(empDao.getById(17)).thenReturn(empl);
		Employee actualEmp = empServ.getEmployeeById(17);
		
		assertEquals(empl,actualEmp);
	}
	
	@Test
	public void getsubmitReimbursementRequestsuccessfully() {
		Reimbursement reim = new Reimbursement();
		when(reqDao.create(reim)).thenReturn(10);
		int newReim = empServ.submitReimbursementRequest(reim);
		assertNotEquals(0,newReim);
	}
	
	@Test
	public void getEmployeeCommentsSuccessfully() {
		Reimbursement reim = new Reimbursement();
		when(commentDao.getByRequestId(1)).thenReturn(mockAvailableComments);
		Set<Comment> actualComments = empServ.getComments(reim);
		assertEquals(mockAvailableComments,actualComments);
	}
	
}
