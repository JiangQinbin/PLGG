/*    */ package dingcengjiekou;
/*    */ 
/*    */ import java.sql.Connection;
/*    */ import java.sql.PreparedStatement;
import java.sql.ResultSet;
/*    */ import java.sql.SQLException;
import java.sql.Statement;
/*    */ import java.util.ArrayList;
/*    */ import java.util.List;
/*    */ import lianjieshujuku.qudong;
/*    */ import yingselei.OrderInformation;
import yingselei.OrderQuery;
/*    */ 
/*    */ public class OrderInformationDAOlmg
/*    */   implements OrderInformationDAO
/*    */ {
/*    */   public boolean inser(OrderInformation data)
/*    */   {
/* 16 */     boolean zhuce = false;
/* 17 */     Connection connection = qudong.getConnection();
               try {
				connection.setAutoCommit(false);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
/* 18 */     PreparedStatement preparedStatement = null;
/* 19 */     String sql = "INSERT INTO theorder VALUES(?,?,?,?,?,?,NOW(),?,?,?,?,?,0,?,?,0,0)";
/*    */     try {
/* 21 */       preparedStatement = connection.prepareStatement(sql);
/* 22 */       preparedStatement.setString(1, data.getOrderID());
/* 23 */       preparedStatement.setString(2, null);
/* 24 */       preparedStatement.setString(3, data.getUserName());
/* 25 */       preparedStatement.setString(4, data.getSpecifications());
/* 26 */       preparedStatement.setString(5, data.getAddressID());
/* 27 */       preparedStatement.setInt(6, data.getNumber());
/* 28 */       preparedStatement.setFloat(7, data.getTotal_price());
               preparedStatement.setString(8, data.getMerchants());
               preparedStatement.setString(9, data.getManguoID());
               preparedStatement.setFloat(10, data.getUnit_price());
               preparedStatement.setFloat(11, data.getWeightof());
               preparedStatement.setDate(12, null);
               preparedStatement.setFloat(13,-0.1f );
/* 29 */       int n = preparedStatement.executeUpdate();
               String sql1 = "UPDATE mangoattribute SET keshouliang=keshouliang-"+data.getNumber()+" WHERE manguoID='"+data.getManguoID()+"'";
               
               int m = preparedStatement.executeUpdate(sql1);
               connection.commit();
/* 30 */       if (n > 0&&m>0)
/* 31 */         zhuce = true;
/* 32 */       qudong.release(connection, preparedStatement);
               return zhuce;
/*    */     }
/*    */     catch (SQLException e) {
/* 35 */       e.printStackTrace();
/*    */     }
/*    */     
/* 38 */     return zhuce;
/*    */   }
/*    */   
/*    */ 
/*    */   public boolean delete(String id)
/*    */   {
/* 44 */     return false;
/*    */   }
/*    */   

public int selectM(String mangguoID) throws SQLException {
	Connection connection = qudong.getConnection();
	PreparedStatement preparedStatement = null;
	String sql = "SELECT m.keshouliang FROM mangoattribute m WHERE m.manguoID=?";
	preparedStatement = connection.prepareStatement(sql);
	preparedStatement.setString(1, mangguoID);
	ResultSet resultSet = preparedStatement.executeQuery();
	int k = 0;
	while (resultSet.next()) {
		k = resultSet.getInt(1);
	}
	qudong.release(connection, preparedStatement);
	System.out.println(k);
	return k;
	
}

/*    */ 
/*    */   public boolean update(String id, OrderInformation data)
/*    */   {
/* 50 */     return false;
/*    */   }
/*    */   public boolean update1(String dingdanhao, String jiaoyihao,Float total_amount) throws SQLException
/*    */   {
	             boolean zhuce = false;
	/* 17 */     Connection connection = qudong.getConnection();
	/* 18 */     Statement Statement = null;
	             //System.out.println(dingdanhao+","+jiaoyihao+","+total_amount);
	/* 19 */     String sql1 = "UPDATE theorder SET Transactionno='"+jiaoyihao+"',paymentMerk=1,actualPayment="+total_amount+",paymentTime=NOW() WHERE ordernumber='"+dingdanhao+"';";
/* 50 */         String sql2="UPDATE mangoattribute t1,(SELECT manguoID,number FROM theorder WHERE ordernumber='"+dingdanhao+"') t2 SET yeshouliang=yeshouliang+number WHERE t1.manguoID=t2.manguoID;";
                 Statement = connection.createStatement();
	             int n = Statement.executeUpdate(sql1);
	             int m = Statement.executeUpdate(sql2);
/* 30 */       if (n > 0&&m>0)
/* 31 */         zhuce = true;
/* 32 */       qudong.release(connection, Statement);
               return zhuce;
/*    */   }
/*    */ 
/*    */   public ArrayList<OrderInformation> seletAll()
/*    */   {
/* 56 */     return null;
/*    */   }
/*    */   
/*    */ 
/*    */   public OrderInformation select(String id)
/*    */   {
/* 62 */     return null;
/*    */   }
/*    */   
/*    */ 
/*    */   public OrderInformation select1(String id)
/*    */   {
/* 68 */     return null;
/*    */   }
/*    */   
/*    */ 
/*    */   public List<OrderInformation> select2()
/*    */   {
/* 74 */     return null;
/*    */   }
           public List<OrderQuery> select3(String username){
        	   OrderQuery MyOrder=null;
        	   List<OrderQuery> list=new ArrayList<OrderQuery>();
        	   Connection connection=qudong.getConnection();
        	   PreparedStatement pStatement=null;
        	   ResultSet resultSet=null;
        	   String sql="SELECT t2.manguoname, t2.username, t1.guige, t1.number, t1.paymentamount, t1.danjia, t1.junzhong, t1.paymentTime,t3.consigneeName, t3.mobile, t3.fullAddress, t2.manguoID FROM theorder t1, mangoattribute t2, harvestaddress t3 WHERE t1.username='"+username+"' AND t1.paymentMerk=1 AND t1.manguoID=t2.manguoID AND t1.addressSerialnumber=t3.addressID and t1.username=t3.username ORDER BY t1.paymentTime DESC";
        	   try {
				pStatement=connection.prepareStatement(sql);
				resultSet=pStatement.executeQuery();
				while (resultSet.next()) {
					MyOrder=new OrderQuery();
					MyOrder.setManguoname(resultSet.getString(1));
					MyOrder.setUsername(resultSet.getString(2));
					MyOrder.setGuige(resultSet.getString(3));
					MyOrder.setNumber(resultSet.getInt(4));
					MyOrder.setPaymentamount(resultSet.getFloat(5));
					MyOrder.setDanjia(resultSet.getFloat(6));
					MyOrder.setJunzhong(resultSet.getFloat(7));
					MyOrder.setPaymentTime(resultSet.getString(8));
					MyOrder.setConsignee(resultSet.getString(9));
					MyOrder.setPhone(resultSet.getString(10));
					MyOrder.setAddress(resultSet.getString(11));
					MyOrder.setManguoaId(resultSet.getString(12));
					list.add(MyOrder);
				}
				qudong.release(connection, pStatement, resultSet);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	   return list;
           }
           
           public List<OrderQuery> select4(String username){
        	   OrderQuery MyOrder=null;
        	   List<OrderQuery> list=new ArrayList<OrderQuery>();
        	   Connection connection=qudong.getConnection();
        	   PreparedStatement pStatement=null;
        	   ResultSet resultSet=null;
        	   String sql="SELECT t2.manguoname, t2.username, t1.guige, t1.number, t1.paymentamount, t1.danjia, t1.junzhong, t1.paymentTime,t3.consigneeName, t3.mobile, t3.fullAddress, t2.manguoID FROM theorder t1, mangoattribute t2, harvestaddress t3 WHERE t1.username='"+username+"' AND t1.paymentMerk=1 AND t1.manguoID=t2.manguoID AND t1.addressSerialnumber=t3.addressID and t1.username=t3.username and t1.delivery=0 ORDER BY t1.paymentTime DESC";
        	   try {
				pStatement=connection.prepareStatement(sql);
				resultSet=pStatement.executeQuery();
				while (resultSet.next()) {
					MyOrder=new OrderQuery();
					MyOrder.setManguoname(resultSet.getString(1));
					MyOrder.setUsername(resultSet.getString(2));
					MyOrder.setGuige(resultSet.getString(3));
					MyOrder.setNumber(resultSet.getInt(4));
					MyOrder.setPaymentamount(resultSet.getFloat(5));
					MyOrder.setDanjia(resultSet.getFloat(6));
					MyOrder.setJunzhong(resultSet.getFloat(7));
					MyOrder.setPaymentTime(resultSet.getString(8));
					MyOrder.setConsignee(resultSet.getString(9));
					MyOrder.setPhone(resultSet.getString(10));
					MyOrder.setAddress(resultSet.getString(11));
					MyOrder.setManguoaId(resultSet.getString(12));
					list.add(MyOrder);
				}
				qudong.release(connection, pStatement, resultSet);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	   return list;
           }
           
           public List<OrderQuery> select5(String username){
        	   OrderQuery MyOrder=null;
        	   List<OrderQuery> list=new ArrayList<OrderQuery>();
        	   Connection connection=qudong.getConnection();
        	   PreparedStatement pStatement=null;
        	   ResultSet resultSet=null;
        	   String sql="SELECT t2.manguoname, t2.username, t1.guige, t1.number, t1.paymentamount, t1.danjia, t1.junzhong, t1.paymentTime,t3.consigneeName, t3.mobile, t3.fullAddress, t2.manguoID, t1.ordernumber FROM theorder t1, mangoattribute t2, harvestaddress t3 WHERE t1.username='"+username+"' AND t1.paymentMerk=1 AND t1.manguoID=t2.manguoID AND t1.addressSerialnumber=t3.addressID and t1.username=t3.username and t1.delivery=1 and t1.harvest=0 ORDER BY t1.paymentTime DESC";
        	   try {
				pStatement=connection.prepareStatement(sql);
				resultSet=pStatement.executeQuery();
				while (resultSet.next()) {
					MyOrder=new OrderQuery();
					MyOrder.setManguoname(resultSet.getString(1));
					MyOrder.setUsername(resultSet.getString(2));
					MyOrder.setGuige(resultSet.getString(3));
					MyOrder.setNumber(resultSet.getInt(4));
					MyOrder.setPaymentamount(resultSet.getFloat(5));
					MyOrder.setDanjia(resultSet.getFloat(6));
					MyOrder.setJunzhong(resultSet.getFloat(7));
					MyOrder.setPaymentTime(resultSet.getString(8));
					MyOrder.setConsignee(resultSet.getString(9));
					MyOrder.setPhone(resultSet.getString(10));
					MyOrder.setAddress(resultSet.getString(11));
					MyOrder.setManguoaId(resultSet.getString(12));
					MyOrder.setOrdernumber(resultSet.getString(13));
					list.add(MyOrder);
				}
				qudong.release(connection, pStatement, resultSet);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	   return list;
           }
           
           public List<OrderQuery> select6(String username){
        	   OrderQuery MyOrder=null;
        	   List<OrderQuery> list=new ArrayList<OrderQuery>();
        	   Connection connection=qudong.getConnection();
        	   PreparedStatement pStatement=null;
        	   ResultSet resultSet=null;
        	   String sql="SELECT t2.manguoname, t2.username, t1.guige, t1.number, t1.paymentamount, t1.danjia, t1.junzhong, t1.paymentTime,t3.consigneeName, t3.mobile, t3.fullAddress, t2.manguoID FROM theorder t1, mangoattribute t2, harvestaddress t3 WHERE t1.username='"+username+"' AND t1.paymentMerk=1 AND t1.manguoID=t2.manguoID AND t1.addressSerialnumber=t3.addressID and t1.username=t3.username and t1.delivery=1 and t1.harvest=1 ORDER BY t1.paymentTime DESC" ;
        	   try {
				pStatement=connection.prepareStatement(sql);
				resultSet=pStatement.executeQuery();
				while (resultSet.next()) {
					MyOrder=new OrderQuery();
					MyOrder.setManguoname(resultSet.getString(1));
					MyOrder.setUsername(resultSet.getString(2));
					MyOrder.setGuige(resultSet.getString(3));
					MyOrder.setNumber(resultSet.getInt(4));
					MyOrder.setPaymentamount(resultSet.getFloat(5));
					MyOrder.setDanjia(resultSet.getFloat(6));
					MyOrder.setJunzhong(resultSet.getFloat(7));
					MyOrder.setPaymentTime(resultSet.getString(8));
					MyOrder.setConsignee(resultSet.getString(9));
					MyOrder.setPhone(resultSet.getString(10));
					MyOrder.setAddress(resultSet.getString(11));
					MyOrder.setManguoaId(resultSet.getString(12));
					list.add(MyOrder);
				}
				qudong.release(connection, pStatement, resultSet);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	   return list;
           }
           
           public int update2(String ordernumber) throws SQLException {
        	   Connection connection=qudong.getConnection();
        	   PreparedStatement pStatement=null;
        	   int resultSet=0;
        	   String sql="UPDATE theorder SET harvest=1 WHERE  ordernumber =?";
				pStatement=connection.prepareStatement(sql);
				pStatement.setString(1, ordernumber);
				resultSet=pStatement.executeUpdate();
                return resultSet;
           }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\dingcengjiekou\OrderInformationDAOlmg.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */