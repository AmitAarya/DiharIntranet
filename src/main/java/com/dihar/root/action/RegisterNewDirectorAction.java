package com.dihar.root.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.root.dao.RegisterNewDirectorDao;
import com.dihar.root.form.RegisterNewDirector;

public class RegisterNewDirectorAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegisterNewDirector register = (RegisterNewDirector) form;

		if ( new RegisterNewDirectorDao().isDsaRegistered(register.getUserId(),register.getUserName(),register.getUserGender(),register.getUserDesignation(),register.getUserDivision(),register.getUserCadre())) {
			return mapping.findForward("success");
		} else
			return mapping.findForward("failure");
	}

}
