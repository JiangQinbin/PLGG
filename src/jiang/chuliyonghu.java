/*    */ package jiang;
/*    */ 
/*    */ public class chuliyonghu {
/*    */   public String chuli(String yonghu) {
/*  5 */     int length = yonghu.length();
/*  6 */     String changeyonghu = "******";
/*  7 */     if (length > 5) {
/*  8 */       changeyonghu = "";
/*  9 */       for (int i = 0; i < length; i++) {
/* 10 */         if ((i == 0) || (i == length - 1)) {
/* 11 */           changeyonghu = changeyonghu + yonghu.charAt(i);
/*    */         } else {
/* 13 */           changeyonghu = changeyonghu + "*";
/*    */         }
/*    */       }
/*    */     }
/* 17 */     return changeyonghu;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\jiang\chuliyonghu.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */