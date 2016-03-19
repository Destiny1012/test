package com.information.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.information.domain.Information;

@Repository
@Transactional
public class InformationDao implements IInformationDao {

	@Resource
	private SessionFactory sessionFactory;

	public void save(Information information) {
		getSession().save(information);
	}

	public void delete(long id) {
		Object obj = getSession().get(Information.class, id);
		getSession().delete(obj);
	}

	public void update(Information information) {
		getSession().merge(information);
	}

	public Information get(long id) {
		return (Information) getSession().get(Information.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Information> getAll() {
		return getSession().createCriteria(Information.class).list();
	}

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	protected SessionFactory getFactory() {
		return sessionFactory;
	}

}