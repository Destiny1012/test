package com.page.action;

import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@SuppressWarnings("rawtypes")
public class PageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String result;

	public String checkLogin() {
		Map session = ActionContext.getContext().getSession();
		if (session.get("email") != null) {
			result = "true";
		} else {
			result = "false";
		}
		return "checkLogin";
	}
	
	public String adminLogin() {
		Map session = ActionContext.getContext().getSession();
		if (session.get("name") != null) {
			result = "true";
		}else {
			result = "false";
		}
		return "adminLogin";
	}
	
	public String toLogin() throws Exception {
		return "toLogin";
	}

	public String toRegister() throws Exception {
		return "toRegister";
	}

	public String toDetail() throws Exception {
		return "toDetail";
	}

	public String toRelease() throws Exception {
		return "toRelease";
	}

	public String toInforPer() throws Exception {
		return "toInforPer";
	}

	public String toInforUp() throws Exception {
		return "toInforUp";
	}

	public String toInforPas() throws Exception {
		return "toInforPas";
	}

	public String toInforPass() throws Exception {
		return "toInforPass";
	}
	
	public String toAdminLogin() throws Exception {
		return "toAdminLogin";
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
