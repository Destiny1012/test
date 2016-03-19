package com.reply.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.reply.dao.IReplyDao;
import com.reply.domain.Reply;

@Service
public class ReplyService implements IReplyService {
	
	@Resource
	private IReplyDao replyDao;
	
	public boolean save(Reply reply) {
		try{
			replyDao.save(reply);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean delete(long id) {
		try{
			replyDao.delete(id);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public Reply get(long id) {
		try{
			return replyDao.get(id);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public List<Reply> getAll(long id) {
		try{
			return replyDao.getAll();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
