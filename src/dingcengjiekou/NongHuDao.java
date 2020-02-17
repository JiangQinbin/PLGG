package dingcengjiekou;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lianjieshujuku.qudong;
import yingselei.NongHu;
import yingselei.Vodeo;


public class NongHuDao {
	public NongHu QearyNongHu(String nonghu) {
		NongHu Nonghu = null;
		Connection connection = qudong.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String sql = "SELECT * FROM nonghu WHERE username=?";
		    try {
		      preparedStatement = connection.prepareStatement(sql);
		      preparedStatement.setString(1, nonghu);
	          resultSet = preparedStatement.executeQuery();
		      while (resultSet.next()) {
		    	  Nonghu = new NongHu();
		    	  Nonghu.setUsername(resultSet.getString(1));
		    	  Nonghu.setDizhi(resultSet.getString(2));
		    	  Nonghu.setShenfengzhengma(resultSet.getString(3));
		    	  Nonghu.setXingming(resultSet.getString(4));
		    	  Nonghu.setDizhi(resultSet.getString(5));
		    	  Nonghu.setZhifubaohao(resultSet.getString(6));
		    	  Nonghu.setKaidianshijian(resultSet.getString(7));
		     }
		    qudong.release(connection, preparedStatement, resultSet);
		  }
		  catch (SQLException e) {
		      e.printStackTrace();
	     }
		   
      return Nonghu;
	}
	
	public List<Vodeo> qearyVodeo(String nonghu) {
		Vodeo vodeo = null;
		List<Vodeo> list = new ArrayList<Vodeo>();
		Connection connection = qudong.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String sql = "SELECT * FROM video WHERE yonghu=?";
		    try {
		      preparedStatement = connection.prepareStatement(sql);
		      preparedStatement.setString(1, nonghu);
	          resultSet = preparedStatement.executeQuery();
		      while (resultSet.next()) {
		    	  vodeo = new Vodeo();
		    	  vodeo.setYonghu(resultSet.getString(1));
		    	  vodeo.setShipinming(resultSet.getString(2));
		    	  vodeo.setShijian(resultSet.getString(3));
		    	  list.add(vodeo);
		     }
		    qudong.release(connection, preparedStatement, resultSet);
		  }
		  catch (SQLException e) {
		      e.printStackTrace();
	     }
		   
      return list;
	}

}
