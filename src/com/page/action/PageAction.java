package com.page.action;

import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class PageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String result;
	
	@SuppressWarnings("rawtypes")
	public String checkLogin(){
	    Map  session = ActionContext.getContext().getSession();
	    if(session.get("username")!=null){
	    	result = "true";
	    }
	    else{
	    	result = "false";
	    }
		return "checkLogin";
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
}
