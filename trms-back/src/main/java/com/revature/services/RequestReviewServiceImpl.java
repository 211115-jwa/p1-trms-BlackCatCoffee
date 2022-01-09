package com.revature.services;

import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

import com.revature.beans.Comment;
import com.revature.beans.Department;
import com.revature.beans.Employee;
import com.revature.beans.Reimbursement;
import com.revature.beans.Status;
import com.revature.data.CommentDAO;
import com.revature.data.DepartmentDAO;
import com.revature.data.EmployeeDAO;
import com.revature.data.EventTypeDAO;
import com.revature.data.GradingFormatDAO;
import com.revature.data.ReimbursementDAO;
import com.revature.data.StatusDAO;
import com.revature.exceptions.IncorrectCredentialsException;
import com.revature.utils.DAOFactory;

public class RequestReviewServiceImpl implements RequestReviewService {
	private EventTypeDAO eventTypeDao = DAOFactory.getEventTypeDAO();
	private GradingFormatDAO gradFormatDao = DAOFactory.getGradingFormatDAO();
	private StatusDAO statusDao = DAOFactory.getStatusDAO();
	private ReimbursementDAO reqDao = DAOFactory.getReimbursementDAO();
	private CommentDAO commentDao = DAOFactory.getCommentDAO();
	private EmployeeDAO empDao = DAOFactory.getEmployeeDAO();
	private DepartmentDAO deptDao = DAOFactory.getDepartmentDAO();
	
	
	
	
	@SuppressWarnings("unlikely-arg-type")
	@Override
	public Set<Reimbursement> getPendingReimbursements(Employee approver) {
		Status status = new Status();
		
		if (approver.getRole().equals("BenCo representative")) {
			status = statusDao.getById(6);
		}else if(approver.getRole().equals("Department Head")) {
			status = statusDao.getById(5);
		}else if(approver.getRole().equals("Direct Supervisor")) {
			status = statusDao.getById(4);
		}else {
			return null;
		}
		Set<Reimbursement> pendingReimbursements = reqDao.getByStatus(status);
		return pendingReimbursements;
	}

	@Override
	public void approveRequest(Reimbursement request) {
		LocalDate date = LocalDate.now();
		Status status = request.getStatus();
		if (status.equals(statusDao.getById(4))) {
			status.setStatusId(5);
		}else if (status.equals(statusDao.getById(5))) {
			status.setStatusId(6);
		}else if (status.equals(statusDao.getById(6))) {
			status.setStatusId(7);
		}
		request.setStatus(status);

	}

	@Override
	public void rejectRequest(Reimbursement request) {
		Status status = request.getStatus();
		if (status.equals(statusDao.getById(4))) {
			status.setStatusId(7);
		}else if (status.equals(statusDao.getById(5))) {
			status.setStatusId(8);
		}else if (status.equals(statusDao.getById(6))) {
			status.setStatusId(9);
		}
		request.setStatus(status);

	}

	@Override
	public void rejectRequest(Reimbursement request, Comment comment) {
		// TODO Auto-generated method stub

	}

	@Override
	public Reimbursement updateCostBenCo(Reimbursement request) {
		if(request.getStatus().equals(statusDao.getById(6))) {
			reqDao.update(request);
		}
		return request;
	}

	

}
