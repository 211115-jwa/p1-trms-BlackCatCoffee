package com.revature.services;

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
import com.revature.utils.DAOFactory;

public class RequestReviewServiceImpl implements RequestReviewService {
	private EventTypeDAO eventTypeDao = DAOFactory.getEventTypeDAO();
	private GradingFormatDAO gradFormatDao = DAOFactory.getGradingFormatDAO();
	private StatusDAO statusDao = DAOFactory.getStatusDAO();
	private ReimbursementDAO reqDao = DAOFactory.getReimbursementDAO();
	private CommentDAO commentDao = DAOFactory.getCommentDAO();
	private EmployeeDAO empDao = DAOFactory.getEmployeeDAO();
	private DepartmentDAO deptDao = DAOFactory.getDepartmentDAO();
	
	
	@Override
	public Set<Reimbursement> getPendingReimbursements(Employee approver) {
		Set<Status> pendingStatus = statusDao.getByName("Pending Approval"));
		pendingStatus.forEach(pending -> {
			if(pending.getApprover().equals(approver));
		});
	
		return null;
	}

	@Override
	public void approveRequest(Reimbursement request) {
		// TODO Auto-generated method stub

	}

	@Override
	public void rejectRequest(Reimbursement request) {
		// TODO Auto-generated method stub

	}

	@Override
	public void rejectRequest(Reimbursement request, Comment comment) {
		// TODO Auto-generated method stub

	}

}
