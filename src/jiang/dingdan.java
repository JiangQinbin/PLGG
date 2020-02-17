/*    */ package jiang;
/*    */ 
/*    */ public class dingdan {
/*    */   public boolean panduan(String shuliang, String xingming, String dianhua, String dizhi) {
/*  5 */     boolean fis = false;
/*  6 */     int shuliang1 = 0;
/*  7 */     shuliang1 = Integer.parseInt(shuliang);
/*  8 */     if ((shuliang1 != 0) && (xingming != null) && (!"".equals(xingming)) && (dianhua != null) && (!"".equals(dianhua)) && (dizhi != null) && (!"".equals(dizhi))) {
/*  9 */       fis = true;
/*    */     } else {
/* 11 */       fis = false;
/*    */     }
/* 13 */     return fis;
/*    */   }
/*    */   
/*    */   public int jisuan(String danjia, String youfei, String shuliang) {
/* 17 */     int zongjia = 0;int danjia1 = 0;int youfei1 = 0;int shuliang1 = 0;
/* 18 */     danjia1 = Integer.parseInt(danjia);
/* 19 */     youfei1 = Integer.parseInt(youfei);
/* 20 */     shuliang1 = Integer.parseInt(shuliang);
/* 21 */     zongjia = danjia1 * shuliang1 + shuliang1 * youfei1;
/* 22 */     return zongjia;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\jiang\dingdan.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */