package com.dihar.root.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.root.dao.LoginDao;
import com.dihar.root.dao.RegisterNewDsaDao;
import com.dihar.root.form.RegisterNewDsa;
import com.dihar.root.form.RootLoginForm;

public class RegisterNewDsaAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegisterNewDsa registernewdsa = (RegisterNewDsa) form;

		if ( new RegisterNewDsaDao().isDsaRegistered(registernewdsa.getUserId(),registernewdsa.getUserName(),registernewdsa.getUserGender(),registernewdsa.getUserDesignation(),registernewdsa.getUserDivision(),registernewdsa.getUserCadre())) {
			return mapping.findForward("success");
		} else
			return mapping.findForward("failure");
	}

}
