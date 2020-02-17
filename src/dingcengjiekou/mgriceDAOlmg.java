/*     */ package dingcengjiekou;
/*     */ 
/*     */ import java.sql.Connection;
/*     */ import java.sql.PreparedStatement;
/*     */ import java.sql.ResultSet;
/*     */ import java.sql.SQLException;
/*     */ import java.util.ArrayList;
/*     */ import java.util.List;
/*     */ import lianjieshujuku.qudong;
/*     */ import yingselei.mangoprice;
/*     */ 
/*     */ 
/*     */ 
/*     */ public class mgriceDAOlmg
/*     */   implements shiyanDAO1
/*     */ {
/*     */   public boolean inser(mangoprice data)
/*     */   {
/*  19 */    return true;
/*    */     
/*     */   }
/*     */   
/*     */ 
/*     */   public boolean delete(String id)
/*     */   {
/*  25 */     return false;
/*     */   }
/*     */   
/*     */ 
/*     */   public boolean update(String id, mangoprice data)
/*     */   {
/*  31 */     return false;
/*     */   }
/*     */   
/*     */ 
/*     */   public ArrayList<mangoprice> seletAll()
/*     */   {
/*  37 */     return null;
/*     */   }
/*     */   
/*     */ 
/*     */   public List<mangoprice> select2()
/*     */   {
/*  43 */     mangoprice chaxun = null;
/*  44 */     List<mangoprice> list = null;
/*  45 */     Connection connection = qudong.getConnection();
/*  46 */     PreparedStatement preparedStatement = null;
/*  47 */     ResultSet resultSet = null;
/*  48 */     String sql = "SELECT * FROM mangoattribute WHERE keshouliang>0 ORDER BY yeshouliang DESC LIMIT 0,12 ";
              String nsql = " SELECT * FROM mangoattribute WHERE keshouliang>0 ORDER BY (danjiadahao+danjiaxiaohao+danjiadazhong+danjiaziaozhong)/4 ASC LIMIT 0,12 ";
/*     */     try {
/*  50 */       preparedStatement = connection.prepareStatement(sql);
/*  51 */       resultSet = preparedStatement.executeQuery();
/*  52 */       list = new ArrayList();
/*  53 */       while (resultSet.next()) {
/*  54 */         chaxun = new mangoprice();
/*  55 */         chaxun.setManguoname(resultSet.getString(2));
/*  56 */         chaxun.setDanjiadahao(resultSet.getFloat(3));
/*  58 */         chaxun.setDanjiadazhong(resultSet.getFloat(4));
/*  59 */         chaxun.setDanjiaziaozhong(resultSet.getFloat(6));
/*  60 */         chaxun.setDanjiaxiaohao(resultSet.getFloat(5));
/*  61 */         chaxun.setDapingjun(resultSet.getFloat(7));
/*  62 */         chaxun.setXiaopingjun(resultSet.getFloat(8));
                  chaxun.setUsername(resultSet.getString(9));
                  chaxun.setIntroduce(resultSet.getString(10));
                  chaxun.setManguoID(resultSet.getString(1));
                  chaxun.setYeshouliang(resultSet.getInt(11));
                  chaxun.setKeshouliang(resultSet.getInt(12));
/*  63 */         list.add(chaxun);
                  }
                 preparedStatement = connection.prepareStatement(nsql);
/*  51 */       resultSet = preparedStatement.executeQuery();
/*  53 */       while (resultSet.next()) {
/*  54 */         chaxun = new mangoprice();
/*  55 */         chaxun.setManguoname(resultSet.getString(2));
/*  56 */         chaxun.setDanjiadahao(resultSet.getFloat(3));
/*  58 */         chaxun.setDanjiadazhong(resultSet.getFloat(4));
/*  59 */         chaxun.setDanjiaziaozhong(resultSet.getFloat(6));
/*  60 */         chaxun.setDanjiaxiaohao(resultSet.getFloat(5));
/*  61 */         chaxun.setDapingjun(resultSet.getFloat(7));
/*  62 */         chaxun.setXiaopingjun(resultSet.getFloat(8));
                  chaxun.setUsername(resultSet.getString(9));
                  chaxun.setIntroduce(resultSet.getString(10));
                  chaxun.setManguoID(resultSet.getString(1));
                  chaxun.setYeshouliang(resultSet.getInt(11));
                  chaxun.setKeshouliang(resultSet.getInt(12));
/*  63 */         list.add(chaxun);
/*     */       }
             qudong.release(connection, preparedStatement, resultSet);
/*     */     }
/*     */     catch (SQLException e) {
/*  68 */       e.printStackTrace();
/*     */     }
/*     */     
/*  71 */     return list;
/*     */   }
            
public List<mangoprice> selectM(String searchValue)
/*     */   {
/*  43 */     mangoprice chaxun = null;
/*  44 */     List<mangoprice> list = null;
/*  45 */     Connection connection = qudong.getConnection();
/*  46 */     PreparedStatement preparedStatement = null;
/*  47 */     ResultSet resultSet = null;
searchValue = searchValue.replaceAll("攀枝花","");
searchValue = searchValue.replaceAll("芒果","");
/*  48 */     String sql = "SELECT * FROM mangoattribute WHERE keshouliang>0 and (manguoname LIKE '%"+searchValue+"%' OR username LIKE '%"+searchValue+"%') LIMIT 0,24 ";
/*     */     try {
/*  50 */       preparedStatement = connection.prepareStatement(sql);
/*  51 */       resultSet = preparedStatement.executeQuery();
/*  52 */       list = new ArrayList();
/*  53 */       while (resultSet.next()) {
/*  54 */         chaxun = new mangoprice();
/*  55 */         chaxun.setManguoname(resultSet.getString(2));
/*  56 */         chaxun.setDanjiadahao(resultSet.getFloat(3));
/*  58 */         chaxun.setDanjiadazhong(resultSet.getFloat(4));
/*  59 */         chaxun.setDanjiaziaozhong(resultSet.getFloat(6));
/*  60 */         chaxun.setDanjiaxiaohao(resultSet.getFloat(5));
/*  61 */         chaxun.setDapingjun(resultSet.getFloat(7));
/*  62 */         chaxun.setXiaopingjun(resultSet.getFloat(8));
                  chaxun.setUsername(resultSet.getString(9));
                  chaxun.setIntroduce(resultSet.getString(10));
                  chaxun.setManguoID(resultSet.getString(1));
                  chaxun.setYeshouliang(resultSet.getInt(11));
                  chaxun.setKeshouliang(resultSet.getInt(12));
/*  63 */         list.add(chaxun);
                 }
                
/*  65 */       qudong.release(connection, preparedStatement, resultSet);
/*     */     }
/*     */     catch (SQLException e) {
/*  68 */       e.printStackTrace();
/*     */     }
/*     */     
/*  71 */     return list;
/*     */   }


public List<mangoprice> selectMG(String nonghu)
/*     */   {
/*  43 */     mangoprice chaxun = null;
/*  44 */     List<mangoprice> list = null;
/*  45 */     Connection connection = qudong.getConnection();
/*  46 */     PreparedStatement preparedStatement = null;
/*  47 */     ResultSet resultSet = null;
/*  48 */     String sql = "SELECT * FROM mangoattribute WHERE username=? ";
/*     */     try {
/*  50 */       preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, nonghu);
/*  51 */       resultSet = preparedStatement.executeQuery();
/*  52 */       list = new ArrayList();
/*  53 */       while (resultSet.next()) {
/*  54 */         chaxun = new mangoprice();
/*  55 */         chaxun.setManguoname(resultSet.getString(2));
/*  56 */         chaxun.setDanjiadahao(resultSet.getFloat(3));
/*  58 */         chaxun.setDanjiadazhong(resultSet.getFloat(4));
/*  59 */         chaxun.setDanjiaziaozhong(resultSet.getFloat(6));
/*  60 */         chaxun.setDanjiaxiaohao(resultSet.getFloat(5));
/*  61 */         chaxun.setDapingjun(resultSet.getFloat(7));
/*  62 */         chaxun.setXiaopingjun(resultSet.getFloat(8));
                  chaxun.setUsername(resultSet.getString(9));
                  chaxun.setIntroduce(resultSet.getString(10));
                  chaxun.setManguoID(resultSet.getString(1));
                  chaxun.setYeshouliang(resultSet.getInt(11));
                  chaxun.setKeshouliang(resultSet.getInt(12));
/*  63 */         list.add(chaxun);
                 }
                
/*  65 */       qudong.release(connection, preparedStatement, resultSet);
/*     */     }
/*     */     catch (SQLException e) {
/*  68 */       e.printStackTrace();
/*     */     }
/*     */     
/*  71 */     return list;
/*     */   }
/*     */   
/*     */   public mangoprice select1(String id)
/*     */   {
/*  76 */     mangoprice chaxun = null;
/*  77 */     Connection connection = qudong.getConnection();
/*  78 */     PreparedStatement preparedStatement = null;
/*  79 */     ResultSet resultSet = null;
/*  80 */     String sql ="SELECT * FROM mangoattribute WHERE manguoID=?";
/*     */     try {
/*  82 */       preparedStatement = connection.prepareStatement(sql);
/*  83 */       preparedStatement.setString(1, id);
/*  84 */       resultSet = preparedStatement.executeQuery();
/*  85 */       while (resultSet.next()) {
/*  86 */         chaxun = new mangoprice();
/*  87 */         chaxun.setManguoname(resultSet.getString(2));
/*  56 */         chaxun.setDanjiadahao(resultSet.getFloat(3));
/*  58 */         chaxun.setDanjiadazhong(resultSet.getFloat(4));
/*  59 */         chaxun.setDanjiaziaozhong(resultSet.getFloat(6));
/*  60 */         chaxun.setDanjiaxiaohao(resultSet.getFloat(5));
/*  61 */         chaxun.setDapingjun(resultSet.getFloat(7));
/*  62 */         chaxun.setXiaopingjun(resultSet.getFloat(8));
                  chaxun.setUsername(resultSet.getString(9));
                  chaxun.setIntroduce(resultSet.getString(10));
                  chaxun.setManguoID(resultSet.getString(1));
                  chaxun.setYeshouliang(resultSet.getInt(11));
                  chaxun.setKeshouliang(resultSet.getInt(12));
/*     */       }
/*  95 */       qudong.release(connection, preparedStatement, resultSet);
/*     */     }
/*     */     catch (SQLException e) {
/*  98 */       e.printStackTrace();
/*     */     }
/*     */     
/* 101 */     return chaxun;
/*     */   }
/*     */   
/*     */ 
/*     */   public mangoprice select(String id)
/*     */   {
/* 107 */     return null;
/*     */   }
/*     */ }


/* Location:              F:\jiang\WEB-INF\classes\!\dingcengjiekou\mgriceDAOlmg.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */