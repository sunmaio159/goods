package com.goods.dwr.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.goods.dwr.DwrOrderService;
import com.goods.entity.Cutomer;
import com.goods.entity.Goods;
import com.goods.entity.GoodsType;

@Service
@Component("dwrorderservic")
public class DwrOrderServiceImp implements DwrOrderService {
	@Resource
	private DataSource dataSource;
	public DataSource getDataSource() {
		return dataSource;
	}
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	@SuppressWarnings("null")
	public String[] getinfo(String cutomerid){
		Connection conn = null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		String lxfs="";
		String address="";
		String[] map= new String[2];
		try{
			conn = dataSource.getConnection();
			sql="select * from cutomer where cutomerid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cutomerid);
			rs=pstmt.executeQuery();
			while(rs.next()){
				lxfs=rs.getString("lxfs");
				address=rs.getString("address");
				map[0]=lxfs;
				map[1]=address;
			}			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			// 关闭数据库连接资源
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return map;		
	}
	public String getgoods(String userid) {
		Connection conn = null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		Goods goods = new Goods();
		List<Object> goodslist = new ArrayList<Object>();		
		int i=0;
		String num="";	

		//String [] name = new String [getcount(userid)];
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		GoodsType t = null;
		JSONObject type = null;
		GoodsType t1 = new GoodsType();
		t1.setId("0");
		t1.setNodeid("-1");
		t1.setType("产品");
		t1.setName("产品");
		t1.setDanjia("");
		t1.setXinghao("");
		t1.setGoodsid("0");
		type = new JSONObject(t1);
		GoodsType t2 = new GoodsType();
		goodslist.add(type);
		
		String sql1="";
		List<GoodsType> typelist = new ArrayList<GoodsType>();
		String typename = "";
		String type2id="";
		String type2nodeid="";
		String json="[";
		String body="";
		try{
			conn = dataSource.getConnection();
			sql="select distinct type from goods where userid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs=pstmt.executeQuery();		
			while(rs.next()){
				t = new GoodsType();
				t.setType(rs.getString("type"));
				t.setNodeid("0");				
				i=i+1;
				num=i+"";
				t.setId(num);
				t.setName(rs.getString("type"));
				t.setGoodsid("0");
				t.setDanjia("");
				t.setXinghao("");
				body = t.toString();
				json = json+body;
				typelist.add(t);
				type = new JSONObject(t);
				goodslist.add(type);
			}
			rs.close();			
			pstmt.close();
			
			sql1="select * from goods where type=?";
			
			for(int n=0;n<typelist.size();n++){
				GoodsType type2 = new GoodsType();			
				typename = typelist.get(n).getType();
				type2id = typelist.get(n).getId();
				type2nodeid = typelist.get(n).getNodeid();
				pstmt=conn.prepareStatement(sql1);
				pstmt.setString(1, typename);
				rs=pstmt.executeQuery();				
				while(rs.next()){
					i=i+1;
					num=i+"";
					type2.setId(num);
					type2.setType(typename);
					type2.setNodeid(type2id);
					type2.setName(rs.getString("goodsname"));
					type2.setDanjia(rs.getString("danjia"));
					type2.setXinghao(rs.getString("xinghao"));
					type2.setGoodsid(rs.getString("goodsid"));
					body = type2.toString();
					json = json+body;
					type = new JSONObject(type2);					
					goodslist.add(type);
				}
				json=json+"]";
				rs.close();			
				pstmt.close();
			}
			//System.out.println(goodslist);			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		String a = ""+goodslist;
		//System.out.println(a);
		return a;
	}
	public int getcount(String userid){
		Connection conn = null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		int count = 0;
		try{
			conn = dataSource.getConnection();
			sql="select  count( distinct type) as count from goods where userid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs=pstmt.executeQuery();
			while(rs.next()){
				count = rs.getInt("count"); 
			}			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			// 关闭数据库连接资源
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return count;		
	}
	public List<Goods> getgoodsinfo(String goodsids) {		
		Connection conn = null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Goods> list = new ArrayList<Goods>();
		String sql="select * from goods where goodsid=?";
		try{
			conn = dataSource.getConnection();
			sql="select  * from goods where goodsid in ("+goodsids+")";
			//System.out.println(sql);
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Goods goods = new Goods();				
				goods.setGoodsid(rs.getInt("goodsid"));
				goods.setGoodsname(rs.getString("goodsname"));
				goods.setType(rs.getString("type"));
				goods.setXinghao(rs.getString("xinghao"));
				goods.setDanjia(rs.getString("danjia"));
				goods.setDanwei(rs.getString("danwei"));
				
				list.add(goods);
			}
			pstmt.close();
			rs.close();
			
		}catch (Exception e) {
			
		}
		return list;
	}
}
