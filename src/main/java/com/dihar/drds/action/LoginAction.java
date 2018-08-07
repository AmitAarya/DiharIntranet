package com.dihar.drds.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.drds.dao.LoginDao;
import com.dihar.drds.form.DrdsLoginForm;
import com.dihar.utils.ReusableStaticMethods;

public class LoginAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DrdsLoginForm loginForm = (DrdsLoginForm) form;

		if ( new LoginDao().isVerifyLoginData(loginForm.getUserName(),loginForm.getPassword())) {
			HttpSession session=request.getSession();
			session.setAttribute("userId",loginForm.getUserName());
			session.setAttribute("username",ReusableStaticMethods.getEmployeeName(loginForm.getUserName()));
			return mapping.findForward("success");
		} else
			return mapping.findForward("failure");
	}

}
