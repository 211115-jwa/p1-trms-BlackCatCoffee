package com.revature.services;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import com.revature.beans.Comment;
import com.revature.beans.Employee;
import com.revature.data.CommentDAO;
import com.revature.data.EmployeeDAO;

@ExtendWith(MockitoExtension.class)
public class EmployeeServiceTest {
	@Mock
	private CommentDAO comDao;
	
	@InjectMocks
	private EmployeeService empServ = new EmployeeServiceImpl();
	
	@Test
	public void addNewCommentSuccessfully() {
		Comment comment = new Comment();
		when(comDao.create(comment)).thenReturn(10);
		int newComment = empServ.addComment(comment);
		assertNotEquals(0,newComment);
	}
}
