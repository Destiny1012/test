package com.reply.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.reply.domain.Reply;

@Repository
@Transactional
public class ReplyDao implements IReplyDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public void save(Reply reply) {
		getSession().save(reply);
	}
	
	public void delete(long id) {
		getSession().delete(getSession().get(Reply.class, id));
	}
	
	public Reply get(long id) {
		return (Reply) getSession().get(Reply.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Reply> getAll() {
		return getSession().createCriteria(Reply.class).list();
	}
	
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	protected SessionFactory getFactory() {
		return sessionFactory;
	}

}
