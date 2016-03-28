package com.admin.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.admin.service.IAdminService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class AdminAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	
	@Resource
	private IAdminService adminService;
	private long id;
	private String name;
	private String password;
	
	public String loginAdmin() throws Exception {
		if(adminService.loginAdmin(name, password) == true){
			ActionContext.getContext().getSession().put("name", name);
			return "success";
		}else{
			return "fail";
		}
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
