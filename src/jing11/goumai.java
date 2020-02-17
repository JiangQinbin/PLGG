/*    */ package jing11;
/*    */ 
/*    */ public class goumai {
/*    */   public int goumaimangguo(String danjia) {
/*  5 */     int danjia1 = 0;
/*  6 */     if (danjia.equals("单价：5元/斤")) {
/*  7 */       danjia1 = 5;
/*    */     }
/*  9 */     if (danjia.equals("单价：4元/斤")) {
/* 10 */       danjia1 = 4;
/*    */     }
/* 12 */     if (danjia.equals("单价：3元/斤")) {
/* 13 */       danjia1 = 3;
/*    */     }
/* 15 */     return danjia1;
/*    */   }
/*    */   
/* 18 */   public String goumaimangguo1(String danjia) { String guoming = null;
/* 19 */     if (danjia.equals("单价：5元/斤")) {
/* 20 */       guoming = "凯特";
/*    */     }
/* 22 */     if (danjia.equals("单价：4元/斤")) {
/* 23 */       guoming = "吉禄";
/*    */     }
/* 25 */     if (danjia.equals("单价：3元/斤")) {
/* 26 */       guoming = "爱文";
/*    */     }
/* 28 */     return guoming;
/*    */   }
/*    */   
/* 31 */   public boolean panduanmangguo(String guoming, int jiag) { boolean fis = false;
/* 32 */     if ((!"".equals(guoming)) && (guoming != null) && (jiag != 0)) {
/* 33 */       fis = true;
/*    */     } else {
/* 35 */       fis = false;
/*    */     }
/* 37 */     return fis;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\jing11\goumai.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */