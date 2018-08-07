package com.dihar.root.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.root.dao.RegisterNewDrdsDao;
import com.dihar.root.form.RegisterNewDrds;

public class RegisterNewDrdsAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegisterNewDrds register = (RegisterNewDrds) form;

		if ( new RegisterNewDrdsDao().isDsaRegistered(register.getUserId(),register.getUserName(),register.getUserGender(),register.getUserDesignation(),register.getUserDivision(),register.getUserCadre())) {
			return mapping.findForward("success");
		} else
			return mapping.findForward("failure");
	}

}
