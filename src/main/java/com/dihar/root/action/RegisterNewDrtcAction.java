package com.dihar.root.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.root.dao.RegisterNewDrtcDao;
import com.dihar.root.form.RegisterNewDrtc;

public class RegisterNewDrtcAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegisterNewDrtc register = (RegisterNewDrtc) form;

		if ( new RegisterNewDrtcDao().isDsaRegistered(register.getUserId(),register.getUserName(),register.getUserGender(),register.getUserDesignation(),register.getUserDivision(),register.getUserCadre())) {
			return mapping.findForward("success");
		} else
			return mapping.findForward("failure");
	}

}
