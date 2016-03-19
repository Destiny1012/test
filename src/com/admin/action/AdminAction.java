package com.admin.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.admin.domain.Admin;
import com.admin.service.IAdminService;
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
	
	public String update() throws Exception {
		Admin admin = new Admin();
		admin.setName(name);
		admin.setPassword(password);
		adminService.update(admin);
		return "update";
	}
	
	public String get() throws Exception {
		adminService.get(id);
		return "get";
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
