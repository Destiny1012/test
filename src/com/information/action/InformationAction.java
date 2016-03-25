package com.information.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.information.domain.Information;
import com.information.service.IInformationService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class InformationAction extends ActionSupport {

	private static final long serialVersionUID = 2L;

	@Resource
	private IInformationService informationService;
	private long id;
	private String bt;
	private String gsd;
	private String hd;
	private String ksl;
	private String jqsl;
	private String gzsj;
	private String fbsj;
	private String nr;
	private List<Information> list;
	private int pageSize = 10;
	private int currentPage;
	private int totalSize;
	private int totalPage;
	private String pageBar;

	public String save() throws Exception {
		Information information = new Information();
		SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		information.setBt(bt);
		information.setGsd(gsd);
		information.setHd(hd);
		information.setKsl(ksl);
		information.setJqsl(jqsl);
		information.setGzsj(gzsj);
		information.setFbsj(time.format(new Date()));
		information.setNr(nr);
		informationService.save(information);
		return "save";
	}

	public String delete() throws Exception {
		informationService.delete(id);
		return "delete";
	}

	public String update() throws Exception {
		Information information = informationService.get(id);
		information.setBt(bt);
		information.setGsd(gsd);
		information.setHd(hd);
		information.setKsl(ksl);
		information.setJqsl(jqsl);
		information.setGzsj(gzsj);
		information.setFbsj(fbsj);
		information.setNr(nr);
		informationService.update(information);
		return "update";
	}

	public String get() throws Exception {
		informationService.get(id);
		return "get";
	}

	public String getAll() throws Exception {
		list = informationService.getAll();
		return "getAll";
	}
	
	public String list() throws Exception {
		if(currentPage == 0){
			currentPage = 1;
		}
		totalSize = informationService.getCount();
		int mod = totalSize % pageSize;
		if(mod == 0){
			totalPage = totalSize / pageSize;
		}else{
			totalPage = totalSize / pageSize + 1;
		}
		pageBar = "<nav>";
		pageBar += "<ul class='list_m'>";
		pageBar += "<li><a href='information/list?currentPage=1'>首页</a></li>";
		for(int i = 1; i <= totalPage; i++){
			if(i == currentPage){
				pageBar += "<li class='active'><a href='information/list?currentPage=" + i + "'>" + i + "</a></li>";
			}else{
				pageBar += "<li><a href='information/list?currentPage=" + i + "'>" + i + "</a></li>";
			}
		}
		pageBar += "<li><a href='information/list?currentPage=" + totalPage + "'>尾页</a></li>";
		pageBar += "</ul>";
		pageBar += "</nav>";
		list = informationService.getList(currentPage, pageSize);
		System.out.println(totalSize);
		return "list";
	}
	
	public String infoAll() throws Exception {
		if(currentPage == 0){
			currentPage = 1;
		}
		totalSize = informationService.getCount();
		int mod = totalSize % pageSize;
		if(mod == 0){
			totalPage = totalSize / pageSize;
		}else{
			totalPage = totalSize / pageSize + 1;
		}
		pageBar = "<nav>";
		pageBar += "<ul class='list_m'>";
		pageBar += "<li><a href='information/infoAll?currentPage=1'>首页</a></li>";
		for(int i = 1; i <= totalPage; i++){
			if(i == currentPage){
				pageBar += "<li class='active'><a href='information/infoAll?currentPage=" + i + "'>" + i + "</a></li>";
			}else{
				pageBar += "<li><a href='information/infoAll?currentPage=" + i + "'>" + i + "</a></li>";
			}
		}
		pageBar += "<li><a href='information/infoAll?currentPage=" + totalPage + "'>尾页</a></li>";
		pageBar += "</ul>";
		pageBar += "</nav>";
		list = informationService.getList(currentPage, pageSize);
		return "infoAll";
	}
	
	public String infoAud() throws Exception {
		if(currentPage == 0){
			currentPage = 1;
		}
		totalSize = informationService.getCount();
		int mod = totalSize % pageSize;
		if(mod == 0){
			totalPage = totalSize / pageSize;
		}else{
			totalPage = totalSize / pageSize + 1;
		}
		pageBar = "<nav>";
		pageBar += "<ul class='list_m'>";
		pageBar += "<li><a href='information/infoAud?currentPage=1'>首页</a></li>";
		for(int i = 1; i <= totalPage; i++){
			if(i == currentPage){
				pageBar += "<li class='active'><a href='information/infoAud?currentPage=" + i + "'>" + i + "</a></li>";
			}else{
				pageBar += "<li><a href='information/infoAud?currentPage=" + i + "'>" + i + "</a></li>";
			}
		}
		pageBar += "<li><a href='information/infoAud?currentPage=" + totalPage + "'>尾页</a></li>";
		pageBar += "</ul>";
		pageBar += "</nav>";
		list = informationService.getList(currentPage, pageSize);
		return "infoAud";
	}
	
	public String infoRel() throws Exception {
		if(currentPage == 0){
			currentPage = 1;
		}
		totalSize = informationService.getCount();
		int mod = totalSize % pageSize;
		if(mod == 0){
			totalPage = totalSize / pageSize;
		}else{
			totalPage = totalSize / pageSize + 1;
		}
		pageBar = "<nav>";
		pageBar += "<ul class='list_m'>";
		pageBar += "<li><a href='information/infoRel?currentPage=1'>首页</a></li>";
		for(int i = 1; i <= totalPage; i++){
			if(i == currentPage){
				pageBar += "<li class='active'><a href='information/infoRel?currentPage=" + i + "'>" + i + "</a></li>";
			}else{
				pageBar += "<li><a href='information/infoRel?currentPage=" + i + "'>" + i + "</a></li>";
			}
		}
		pageBar += "<li><a href='information/infoRel?currentPage=" + totalPage + "'>尾页</a></li>";
		pageBar += "</ul>";
		pageBar += "</nav>";
		list = informationService.getList(currentPage, pageSize);
		return "infoRel";
	}
	
	public String infoOrd() throws Exception {
		if(currentPage == 0){
			currentPage = 1;
		}
		totalSize = informationService.getCount();
		int mod = totalSize % pageSize;
		if(mod == 0){
			totalPage = totalSize / pageSize;
		}else{
			totalPage = totalSize / pageSize + 1;
		}
		pageBar = "<nav>";
		pageBar += "<ul class='list_m'>";
		pageBar += "<li><a href='information/infoOrd?currentPage=1'>首页</a></li>";
		for(int i = 1; i <= totalPage; i++){
			if(i == currentPage){
				pageBar += "<li class='active'><a href='information/infoOrd?currentPage=" + i + "'>" + i + "</a></li>";
			}else{
				pageBar += "<li><a href='information/infoOrd?currentPage=" + i + "'>" + i + "</a></li>";
			}
		}
		pageBar += "<li><a href='information/infoOrd?currentPage=" + totalPage + "'>尾页</a></li>";
		pageBar += "</ul>";
		pageBar += "</nav>";
		list = informationService.getList(currentPage, pageSize);
		return "infoOrd";
	}
	
	public String infoHan() throws Exception {
		if(currentPage == 0){
			currentPage = 1;
		}
		totalSize = informationService.getCount();
		int mod = totalSize % pageSize;
		if(mod == 0){
			totalPage = totalSize / pageSize;
		}else{
			totalPage = totalSize / pageSize + 1;
		}
		pageBar = "<nav>";
		pageBar += "<ul class='list_m'>";
		pageBar += "<li><a href='information/infoHan?currentPage=1'>首页</a></li>";
		for(int i = 1; i <= totalPage; i++){
			if(i == currentPage){
				pageBar += "<li class='active'><a href='information/infoHan?currentPage=" + i + "'>" + i + "</a></li>";
			}else{
				pageBar += "<li><a href='information/infoHan?currentPage=" + i + "'>" + i + "</a></li>";
			}
		}
		pageBar += "<li><a href='information/infoHan?currentPage=" + totalPage + "'>尾页</a></li>";
		pageBar += "</ul>";
		pageBar += "</nav>";
		list = informationService.getList(currentPage, pageSize);
		return "infoHan";
	}
	
	public String infoUnh() throws Exception {
		if(currentPage == 0){
			currentPage = 1;
		}
		totalSize = informationService.getCount();
		int mod = totalSize % pageSize;
		if(mod == 0){
			totalPage = totalSize / pageSize;
		}else{
			totalPage = totalSize / pageSize + 1;
		}
		pageBar = "<nav>";
		pageBar += "<ul class='list_m'>";
		pageBar += "<li><a href='information/infoUnh?currentPage=1'>首页</a></li>";
		for(int i = 1; i <= totalPage; i++){
			if(i == currentPage){
				pageBar += "<li class='active'><a href='information/infoUnh?currentPage=" + i + "'>" + i + "</a></li>";
			}else{
				pageBar += "<li><a href='information/infoUnh?currentPage=" + i + "'>" + i + "</a></li>";
			}
		}
		pageBar += "<li><a href='information/infoUnh?currentPage=" + totalPage + "'>尾页</a></li>";
		pageBar += "</ul>";
		pageBar += "</nav>";
		list = informationService.getList(currentPage, pageSize);
		return "infoUnh";
	}
	
	public String infoAdmin() throws Exception {
		if(currentPage == 0){
			currentPage = 1;
		}
		totalSize = informationService.getCount();
		int mod = totalSize % pageSize;
		if(mod == 0){
			totalPage = totalSize / pageSize;
		}else{
			totalPage = totalSize / pageSize + 1;
		}
		pageBar = "<nav>";
		pageBar += "<ul class='list_m'>";
		pageBar += "<li><a href='information/infoAdmin?currentPage=1'>首页</a></li>";
		for(int i = 1; i <= totalPage; i++){
			if(i == currentPage){
				pageBar += "<li class='active'><a href='information/infoAdmin?currentPage=" + i + "'>" + i + "</a></li>";
			}else{
				pageBar += "<li><a href='information/infoAdmin?currentPage=" + i + "'>" + i + "</a></li>";
			}
		}
		pageBar += "<li><a href='information/infoAdmin?currentPage=" + totalPage + "'>尾页</a></li>";
		pageBar += "</ul>";
		pageBar += "</nav>";
		list = informationService.getList(currentPage, pageSize);
		return "infoAdmin";
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public List<Information> getList() {
		return list;
	}

	public void setList(List<Information> list) {
		this.list = list;
	}

	public String getGsd() {
		return gsd;
	}

	public void setGsd(String gsd) {
		this.gsd = gsd;
	}

	public String getHd() {
		return hd;
	}

	public void setHd(String hd) {
		this.hd = hd;
	}

	public String getKsl() {
		return ksl;
	}

	public void setKsl(String ksl) {
		this.ksl = ksl;
	}

	public String getJqsl() {
		return jqsl;
	}

	public void setJqsl(String jqsl) {
		this.jqsl = jqsl;
	}

	public String getGzsj() {
		return gzsj;
	}

	public void setGzsj(String gzsj) {
		this.gzsj = gzsj;
	}

	public String getFbsj() {
		return fbsj;
	}

	public void setFbsj(String fbsj) {
		this.fbsj = fbsj;
	}

	public String getNr() {
		return nr;
	}

	public void setNr(String nr) {
		this.nr = nr;
	}

	public String getBt() {
		return bt;
	}

	public void setBt(String bt) {
		this.bt = bt;
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
