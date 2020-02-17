/*    */ package jiang;
/*    */ 
/*    */ import dingcengjiekou.shiyanDAO;
/*    */ 
/*    */ public class RegistrationClass
/*    */ {
/*    */   public static boolean registrationZC(String username, String passwrod, String nicheng, String shoujihao)
/*    */   {
/*  9 */     boolean gin = false;
/* 10 */     shiyanDAO dao = new dingcengjiekou.shiyanDAOImg();
/* 11 */     String jiami = Conver2MD5.getMD5(passwrod);
/* 12 */     yingselei.kuyingsr User = new yingselei.kuyingsr(username, jiami, nicheng, shoujihao,0);
/* 13 */     if (dao.inser(User))
/* 14 */       gin = true;
/* 15 */     return gin;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\jiang\RegistrationClass.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */