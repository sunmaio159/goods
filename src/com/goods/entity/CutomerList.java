package com.goods.entity;

import java.util.List;

public class CutomerList {
	private List<Cutomer> cutomerlist;

	public List<Cutomer> getCutomerlist() {
		return cutomerlist;
	}

	public void setCutomerlist(List<Cutomer> cutomerlist) {
		this.cutomerlist = cutomerlist;
	}

	public CutomerList(List<Cutomer> cutomerlist) {
		super();
		this.cutomerlist = cutomerlist;
	}
	public CutomerList(){
		super();
	}
	
}
