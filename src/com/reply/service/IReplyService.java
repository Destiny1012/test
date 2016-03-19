package com.reply.service;

import java.util.List;

import com.reply.domain.Reply;

public interface IReplyService {
	
	public boolean save(Reply reply);
	
	public boolean delete(long id);
	
	public Reply get(long id);
	
	public List<Reply> getAll(long id);

}
