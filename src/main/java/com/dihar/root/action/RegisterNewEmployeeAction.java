package com.dihar.root.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.root.dao.RegisterNewAdminDao;
import com.dihar.root.form.RegisterNewAdmin;
import com.dihar.root.form.RegisterNewEmployeeForm;

public class RegisterNewEmployeeAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegisterNewEmployeeForm register = (RegisterNewEmployeeForm) form;

		if ( new RegisterNewAdminDao().isDsaRegistered(register.getEmpId(),register.getEmpName(),register.getEmpGender(),register.getEmpCadre(),register.getEmpDesignation(),register.getEmpDivision(),register.getEmpRemarks())) {
			return mapping.findForward("success");
		} else
			return mapping.findForward("failure");
	}

}
