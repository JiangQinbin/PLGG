/*    */ package theJDBCODBCconnection;
/*    */ 
/*    */ import java.sql.ResultSet;
/*    */ 
/*    */ public class HH {
/*  6 */   public static void main(String[] args) { try { Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
/*  7 */       java.sql.Connection con = java.sql.DriverManager.getConnection("jdbc:odbc:acc", "", "");
/*  8 */       java.sql.Statement st = con.createStatement();
/*  9 */       ResultSet rs = st.executeQuery("select * from [sheet1$]");
/* 10 */       while (rs.next()) {
/* 11 */         System.out.println(rs.getString(1));
/*    */       }
/* 13 */       st.close();
/* 14 */       con.close();
/*    */     } catch (Exception e) {
/* 16 */       e.printStackTrace();
/*    */     }
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\theJDBCODBCconnection\HH.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */