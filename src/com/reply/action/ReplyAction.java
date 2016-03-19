package com.reply.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.reply.domain.Reply;
import com.reply.service.IReplyService;

@Controller
@Scope("prototype")
public class ReplyAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	
	@Resource
	private IReplyService replyService;
	private long id;
	private String content;
	private String time;
	private String visibility;
	private List<Reply> list;
	
	public String save() throws Exception {
		Reply reply = new Reply();
		reply.setContent(content);
		reply.setTime(time);
		reply.setVisibility(visibility);
		replyService.save(reply);
		return "save";
	}
	
	public String delete() throws Exception {
		replyService.delete(id);
		return "delete";
	}
	
	public String get() throws Exception {
		replyService.get(id);
		return "get";
	}
	
	public String getAll() throws Exception {
		list = replyService.getAll(id);
		return "getAll";
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getVisibility() {
		return visibility;
	}
	public void setVisibility(String visibility) {
		this.visibility = visibility;
	}
	public List<Reply> getList() {
		return list;
	}
	public void setList(List<Reply> list) {
		this.list = list;
	}
	
}
