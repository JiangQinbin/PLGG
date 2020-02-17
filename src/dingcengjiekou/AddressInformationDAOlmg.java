/*     */ package dingcengjiekou;
/*     */ 
/*     */ import java.sql.Connection;
/*     */ import java.sql.PreparedStatement;
/*     */ import java.sql.ResultSet;
/*     */ import java.sql.SQLException;
/*     */ import java.util.ArrayList;
/*     */ import java.util.List;
/*     */ import lianjieshujuku.qudong;
/*     */ import yingselei.UserAddress;
/*     */ 
/*     */ 
/*     */ public class AddressInformationDAOlmg
/*     */   implements AddressInformation
/*     */ {
/*     */   public boolean inser(UserAddress data)
/*     */   {
/*  18 */     boolean zhuce = false;
/*  19 */     Connection connection = qudong.getConnection();
/*  20 */     PreparedStatement preparedStatement = null;
/*  21 */     String sql = "INSERT INTO harvestaddress VALUES(?,?,?,?,?,?,?,?,?,?,1)";
/*     */     try {
/*  23 */       preparedStatement = connection.prepareStatement(sql);
/*  24 */       preparedStatement.setString(1, data.getUsername());
/*  25 */       preparedStatement.setString(2, data.getConsigneeName());
/*  26 */       preparedStatement.setString(3, data.getProvinceId());
/*  27 */       preparedStatement.setString(4, data.getCityId());
/*  28 */       preparedStatement.setString(5, data.getCountyId());
                preparedStatement.setString(6, data.getTownId());
/*  25 */       preparedStatement.setString(7, data.getConsigneeAddress());
/*  26 */       preparedStatement.setString(8, data.getMobile());
/*  27 */       preparedStatement.setString(9, data.getFullAddress());
/*  28 */       preparedStatement.setString(10, data.getAddressID());
/*  29 */       int n = preparedStatement.executeUpdate();
/*  30 */       if (n > 0)
/*  31 */         zhuce = true;
/*  32 */       qudong.release(connection, preparedStatement);
/*     */     }
/*     */     catch (SQLException e) {
/*  35 */       e.printStackTrace();
/*     */     }
/*     */     
/*  38 */     return zhuce;
/*     */   }
/*     */   
/*     */ 
/*     */   public boolean delete1(String username,String id)
/*     */   {
	            boolean IfDelete = false ;
	            Connection connection = qudong.getConnection();
	            PreparedStatement pStatement = null;
	            String sql = "update harvestaddress set deletelogo=0 WHERE addressID=? and username=?";
	            try {
					pStatement = connection.prepareStatement(sql);
					pStatement.setString(1, id);
					pStatement.setString(2, username);
					int n = pStatement.executeUpdate();
					 if(n>0) IfDelete = true;
			            qudong.release(connection, pStatement);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	           
/*  44 */     return IfDelete;
/*     */   }
/*     */   
public boolean delete(String id)
/*     */   {

/*  44 */     return false;
/*     */   }
/*     */ 
/*     */   public boolean update(String id, UserAddress data)
/*     */   {
/*  50 */     return false;
/*     */   }
/*     */   public boolean update1(UserAddress data)
/*     */   {
/*  50 */     boolean IfDelete = false ;
Connection connection = qudong.getConnection();
PreparedStatement pStatement = null;
String sql = "UPDATE harvestaddress SET consigneeName=?, provinceId=?,cityId=?,countyId=?,townId=?,consigneeAddress=?,mobile=?,fullAddress=? WHERE username=? AND addressID=?";
try {
	pStatement = connection.prepareStatement(sql);
	pStatement.setString(9, data.getUsername());
	pStatement.setString(1, data.getConsigneeName());
	pStatement.setString(2, data.getProvinceId());
	pStatement.setString(3, data.getCityId());
     pStatement.setString(4, data.getCountyId());
	 pStatement.setString(5, data.getTownId());
      pStatement.setString(6, data.getConsigneeAddress());
       pStatement.setString(7, data.getMobile());
       pStatement.setString(8, data.getFullAddress());
       pStatement.setString(10, data.getAddressID());
	int n = pStatement.executeUpdate();
	 if(n>0) IfDelete = true;
        qudong.release(connection, pStatement);
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

/*  44 */     return IfDelete;
/*     */   }
/*     */ 
/*     */   public ArrayList<UserAddress> seletAll()
/*     */   {
/*  56 */     return null;
/*     */   }
/*     */   
/*     */ 
/*     */   public UserAddress select6(String username, String id)
/*     */   {
/*  62 */     UserAddress chaxun = null;
              Connection connection = qudong.getConnection();
              PreparedStatement PS = null;
              ResultSet resultSet = null;
              String sql = "SELECT * FROM harvestaddress WHERE addressID=? and username=?";
              try {
				PS = connection.prepareStatement(sql);
				PS.setString(1, id);
				PS.setString(2, username);
	            resultSet = PS.executeQuery();
	            int n =0;
	            while (resultSet.next()) {
	            	n++;
	            chaxun = new UserAddress();
	            chaxun.setUsername(resultSet.getString(1));
	            chaxun.setConsigneeName(resultSet.getString(2));
	            	chaxun.setProvinceId(resultSet.getString(3));
	            	 chaxun.setCityId(resultSet.getString(4));
	            	        chaxun.setCountyId(resultSet.getString(5));
	            	                  chaxun.setTownId(resultSet.getString(6));
	            	                  chaxun.setConsigneeAddress(resultSet.getString(7));
	            	                  chaxun.setMobile(resultSet.getString(8));
	            	                  chaxun.setFullAddress(resultSet.getString(9));
	            	                  chaxun.setAddressID(resultSet.getString(10));
	            }
	            	     qudong.release(connection, PS, resultSet);
	            	    
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
             return chaxun;
/*     */   }
/*     */   
/*     */ 
/*     */   public UserAddress select1(String id)
/*     */   {
/*  68 */     return null;
/*     */   }
/*     */   
/*     */  public UserAddress select(String id)
/*     */   {
/*  68 */     return null;
/*     */   }
/*     */ 
/*     */ 
/*  74 */   public List<UserAddress> select2() { return null; }
/*     */   
/*     */   public List<UserAddress> select3(String id) {
/*  77 */     UserAddress chaxun = null;
/*  78 */     List<UserAddress> list = null;
/*  79 */     Connection connection = qudong.getConnection();
/*  80 */     PreparedStatement preparedStatement = null;
/*  81 */     ResultSet resultSet = null;
/*  82 */     String sql = "SELECT * FROM harvestaddress WHERE username=? and deletelogo=1";
/*     */     try {
/*  84 */       preparedStatement = connection.prepareStatement(sql);
/*  85 */       preparedStatement.setString(1, id);
/*  86 */       resultSet = preparedStatement.executeQuery();
/*  87 */       list = new ArrayList<UserAddress>();
/*  88 */       while (resultSet.next()) {
/*  89 */         chaxun = new UserAddress();
/*  90 */         //chaxun.setUsername(resultSet.getString(1));
/*  91 */         chaxun.setConsigneeName(resultSet.getString(2));
/*  92 */         chaxun.setProvinceId(resultSet.getString(3));
/*  93 */         chaxun.setCityId(resultSet.getString(4));
/*  94 */         chaxun.setCountyId(resultSet.getString(5));
                  chaxun.setTownId(resultSet.getString(6));
                  chaxun.setConsigneeAddress(resultSet.getString(7));
                  chaxun.setMobile(resultSet.getString(8));
                  chaxun.setFullAddress(resultSet.getString(9));
                  chaxun.setAddressID(resultSet.getString(10));
/*  95 */         list.add(chaxun);
/*     */       }
/*  97 */       qudong.release(connection, preparedStatement, resultSet);
/*     */     }
/*     */     catch (SQLException e) {
/* 100 */       e.printStackTrace();
/*     */     }
/*     */     
/* 103 */     return list;
/*     */   }
/*     */ }


/* Location:              F:\jiang\WEB-INF\classes\!\dingcengjiekou\AddressInformationDAOlmg.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */