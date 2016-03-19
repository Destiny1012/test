package com.user.action;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.user.domain.User;
import com.user.service.IUserService;

@Controller
@Scope("prototype")
public class UserAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private IUserService userService;
	private long id;
	private String email;
	private String password;
	private String tel;
	private String qq;
	private String result;
	private List<User> list;

	public String save() throws Exception {
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		user.setTel(tel);
		user.setQq(qq);
		userService.saveUser(user);
		return "save";
	}

	public String delete() throws Exception {
		if (userService.deleteUser(id)) {
			result = "success";
		} else {
			result = "fail";
		}
		return "delete";
	}

	public String update() throws Exception {
		User user = userService.getById(id);
		user.setEmail(email);
		user.setPassword(password);
		user.setTel(tel);
		user.setQq(qq);
		if (userService.updateUser(user)) {
			result = "success";
		} else {
			result = "fail";
		}
		return "update";
	}

	public String get() throws Exception {
		userService.getById(id);
		return "get";
	}

	public String execute() throws Exception {
		List<User> list = (List<User>) userService.findAll();
		User user = new User();
		Iterator<User> it = list.iterator();
		while (it.hasNext()) {
			user = (User) it.next();
			if (email.trim().equals(user.getEmail())
					&& password.trim().equals(user.getPassword())) {
				result = "success";
			} else {
				result = "fail";
			}
		}
		return "execute";
	}

	public String getAll() throws Exception {
		list = userService.findAll();
		return "getAll";
	}

	public String toLogin() throws Exception {
		return "toLogin";
	}

	public String toRegister() throws Exception {
		return "toRegister";
	}

	public String toList() throws Exception {
		return "toList";
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

	public String toInforOrd() throws Exception {
		return "toInforOrd";
	}

	public String toInforUnh() throws Exception {
		return "toInforUnh";
	}

	public String toInforHan() throws Exception {
		return "toInforHan";
	}

	public String toInforAll() throws Exception {
		return "toInforAll";
	}

	public String toInforRel() throws Exception {
		return "toInforRel";
	}

	public String toInforAud() throws Exception {
		return "toInforAud";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

}
