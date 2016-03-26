package com.user.action;

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
	private int pageSize = 10;
	private int currentPage;
	private int totalSize;
	private int totalPage;
	private String pageBar;

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

	public String loginUser() throws Exception {
		if(userService.loginUser(email, password) == true){
			return "success";
		}else{
			return "fail";
		}
	}

	public String getAll() throws Exception {
		list = userService.findAll();
		return "getAll";
	}

	public String admin() throws Exception {
		if(currentPage == 0){
			currentPage = 1;
		}
		totalSize = userService.getCount();
		int mod = totalSize % pageSize;
		if(mod == 0){
			totalPage = totalSize / pageSize;
		}else{
			totalPage = totalSize / pageSize + 1;
		}
		pageBar = "<nav>";
		pageBar += "<ul class='list_m'>";
		pageBar += "<li><a href='user/admin?currentPage=1'>首页 </a></li>";
		for (int i = 1; i <= totalPage; i++) {
			if (i == currentPage) {
				pageBar += " <li class='active'><a href='user/admin?currentPage=" + i + "'>" + i + "</a></li>";
			} else {
				pageBar += " <li><a href='user/admin?currentPage=" + i + "'>" + i + "</a></li>";
			}
		}
		pageBar += "<li><a href='user/admin?currentPage=" + totalPage + "'>尾页</a></li>";
		pageBar += "</ul>";
		pageBar += "</nav>";
		list = userService.getList(currentPage, pageSize);
		return "admin";
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

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalSize() {
		return totalSize;
	}

	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public String getPageBar() {
		return pageBar;
	}

	public void setPageBar(String pageBar) {
		this.pageBar = pageBar;
	}

}
