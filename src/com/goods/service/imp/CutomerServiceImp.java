package com.goods.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.dao.CutomerMapper;
import com.goods.entity.Cutomer;
import com.goods.service.CutomerService;

@Service("cutomerService")
public class CutomerServiceImp implements CutomerService{
	@Autowired
	private CutomerMapper cutomermapper;
	
	public int addCutomer(Cutomer cutomer) {		
		return cutomermapper.addCutomer(cutomer);
	}

	public List<Cutomer> CutomerList(String userid) {		
		return cutomermapper.CutomerList(userid);
	}

	public int update(Cutomer cutomer) {
		return cutomermapper.update(cutomer);
	}

	public void deletecutomer(String cutomerid) {
		cutomermapper.deletecutomer(cutomerid);
	}

	public List<Cutomer> selectCutomer(String cutomerid) {		
		return cutomermapper.selectCutomer(cutomerid);
	}

}
