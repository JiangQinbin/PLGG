/*    */ package jiang;
/*    */ 
/*    */ import yingselei.kuyingsr;
/*    */ 
/*    */ public class denglum
/*    */ {
/*    */   public static boolean panduandenglu(String yonghuimi5, String mimaa5)
/*    */   {
/*  9 */     boolean fis = false;
/* 10 */     dingcengjiekou.shiyanDAO dao = new dingcengjiekou.shiyanDAOImg();
/* 11 */     kuyingsr User = (kuyingsr)dao.select(yonghuimi5);
             kuyingsr User1=null;
             if(User==null){
            	 User1=(kuyingsr)dao.select1(yonghuimi5);
             }
/* 12 */     String jiami = Conver2MD5.getMD5(mimaa5);
/* 13 */     if ((User1 != null) || User != null && (jiami.equals(User.getMima()))) {
/* 14 */       fis = true;
/*    */     } else {
/* 16 */       fis = false;
/*    */     }
/* 18 */     return fis;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\jiang\denglum.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */