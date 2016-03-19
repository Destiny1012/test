package com.reply.dao;

import java.util.List;

import com.reply.domain.Reply;

public interface IReplyDao {
	
	public void save(Reply reply);
	
	public void delete(long id);
	
	public Reply get(long id);
	
	public List<Reply> getAll();

}
