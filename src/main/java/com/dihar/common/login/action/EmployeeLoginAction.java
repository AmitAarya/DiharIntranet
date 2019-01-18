package com.dihar.common.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.common.login.dao.EmployeeLoginDao;
import com.dihar.common.login.form.EmployeeLoginForm;
import com.dihar.utils.ReusableStaticMethods;

public class EmployeeLoginAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		EmployeeLoginForm loginForm = (EmployeeLoginForm) form;

		if ( new EmployeeLoginDao().isVerifyLoginData(loginForm.getUserName(),loginForm.getPassword())) {   
			HttpSession session=request.getSession();
			session.setAttribute("userId",loginForm.getUserName());
			session.setAttribute("userName",ReusableStaticMethods.getEmployeeName(loginForm.getUserName()));
			return mapping.findForward("success");
			
		} else
			return mapping.findForward("failure");
	}

}
