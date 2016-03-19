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
	
}
