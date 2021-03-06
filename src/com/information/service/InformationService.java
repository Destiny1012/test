package com.information.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.information.dao.IInformationDao;
import com.information.domain.Information;

@Service
public class InformationService implements IInformationService {
	
	@Resource
	private IInformationDao informationDao;
	
	public boolean save(Information information) {
		try{
			informationDao.save(information);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean delete(long id) {
		try{
			informationDao.delete(id);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean update(Information information) {
		try{
			informationDao.update(information);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public Information get(long id) {
		try{
			return informationDao.get(id);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public List<Information> getAll() {
		try{
			return informationDao.getAll();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public int getCount() {
		try{
			return informationDao.queryCount();
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}
	}
	
	public List<Information> getList(int currentPage, int pageSize) {
		try{
			return informationDao.queryInformation(currentPage, pageSize);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public int queryRep() {
		try{
			return informationDao.queryReq();
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}
	}
	
	public List<Information> queryList(int currentPage, int pageSize) {
		try{
			return informationDao.queryList(currentPage, pageSize);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
