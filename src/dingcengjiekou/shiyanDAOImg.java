/*     */ package dingcengjiekou;
/*     */ 
/*     */ import java.sql.Connection;
/*     */ import java.sql.PreparedStatement;
/*     */ import java.sql.ResultSet;
/*     */ import java.sql.SQLException;
/*     */ import java.util.ArrayList;
/*     */ import java.util.List;
/*     */ import lianjieshujuku.qudong;
/*     */ import yingselei.kuyingsr;
/*     */ 
/*     */ public class shiyanDAOImg
/*     */   implements shiyanDAO
/*     */ {
/*     */   public boolean inser(kuyingsr data)
/*     */   {
/*  17 */     boolean zhuce = false;
/*  18 */     Connection connection = qudong.getConnection();
/*  19 */     PreparedStatement preparedStatement = null;
/*  20 */     String sql = "INSERT INTO yonghui VALUES(?,?,?,?,NOW(),0)";
/*     */     try {
/*  22 */       preparedStatement = connection.prepareStatement(sql);
/*  23 */       preparedStatement.setString(1, data.getYonghuming());
/*  24 */       preparedStatement.setString(2, data.getMima());
/*  25 */       preparedStatement.setString(3, data.getNicheng());
/*  26 */       preparedStatement.setString(4, data.getShoujihao());
/*  27 */       int n = preparedStatement.executeUpdate();
/*  28 */       if (n > 0)
/*  29 */         zhuce = true;
/*  30 */       qudong.release(connection, preparedStatement);
/*     */     }
/*     */     catch (SQLException e) {
/*  33 */       e.printStackTrace();
/*     */     }
/*     */     
/*  36 */     return zhuce;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public boolean delete(String id)
/*     */   {
/*  43 */     return false;
/*     */   }
/*     */   
/*     */ 
/*     */   public boolean update(String id, kuyingsr data)
/*     */   {
/*  49 */     return false;
/*     */   }
/*     */   
/*     */ 
/*     */   public ArrayList<kuyingsr> seletAll()
/*     */   {
/*  55 */     return null;
/*     */   }
/*     */   
/*     */   public kuyingsr select(String id)
/*     */   {
/*  60 */     kuyingsr chaxun = null;
/*  61 */     Connection connection = qudong.getConnection();
/*  62 */     PreparedStatement preparedStatement = null;
/*  63 */     ResultSet resultSet = null;
/*  64 */     String sql = "SELECT * FROM yonghui WHERE yonghuiming=?";
/*     */     try {
/*  66 */       preparedStatement = connection.prepareStatement(sql);
/*  67 */       preparedStatement.setString(1, id);
/*  68 */       resultSet = preparedStatement.executeQuery();
/*  69 */       while (resultSet.next()) {
/*  70 */         chaxun = new kuyingsr();
/*  71 */         chaxun.setYonghuming(resultSet.getString(1));
/*  72 */         chaxun.setMima(resultSet.getString(2));
/*  73 */         chaxun.setNicheng(resultSet.getString(3));
/*  74 */         chaxun.setShoujihao(resultSet.getString(4));
/*     */       }
/*  76 */       qudong.release(connection, preparedStatement, resultSet);
/*     */     }
/*     */     catch (SQLException e) {
/*  79 */       e.printStackTrace();
/*     */     }
/*     */     
/*  82 */     return chaxun;
/*     */   }
/*     */   
/*     */   public kuyingsr select1(String id) {
/*  86 */     kuyingsr chaxun = null;
/*  87 */     Connection connection = qudong.getConnection();
/*  88 */     PreparedStatement preparedStatement = null;
/*  89 */     ResultSet resultSet = null;
/*  90 */     String sql = "SELECT * FROM yonghui WHERE shoujihao=?";
/*     */     try {
/*  92 */       preparedStatement = connection.prepareStatement(sql);
/*  93 */       preparedStatement.setString(1, id);
/*  94 */       resultSet = preparedStatement.executeQuery();
/*  95 */       while (resultSet.next()) {
/*  96 */         chaxun = new kuyingsr();
/*  97 */         chaxun.setYonghuming(resultSet.getString(1));
/*  98 */         chaxun.setMima(resultSet.getString(2));
/*  99 */         chaxun.setNicheng(resultSet.getString(3));
/* 100 */         chaxun.setShoujihao(resultSet.getString(4));
/*     */       }
/* 102 */       qudong.release(connection, preparedStatement, resultSet);
/*     */     }
/*     */     catch (SQLException e) {
/* 105 */       e.printStackTrace();
/*     */     }
/*     */     
/* 108 */     return chaxun;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public List<kuyingsr> select2()
/*     */   {
/* 115 */     return null;
/*     */   }
/*     */ }


/* Location:              F:\jiang\WEB-INF\classes\!\dingcengjiekou\shiyanDAOImg.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */