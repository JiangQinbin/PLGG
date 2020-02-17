/*    */ package jiang;
/*    */ 
/*    */ import java.math.BigDecimal;
/*    */ 
/*    */ public class Lookbiggestorminimum {
/*    */   public float minimum(float shu1, float shu2, float shu3, float shu4) {
/*  7 */     float shu = shu1;
/*  8 */     if (shu > shu2) shu = shu2;
/*  9 */     if (shu > shu3) shu = shu3;
/* 10 */     if (shu > shu4) shu = shu4;
/* 11 */     shu = shu / 2.0F + 3.0F;
/* 12 */     BigDecimal b = new BigDecimal(shu);
/* 13 */     float f1 = b.setScale(2, 4).floatValue();
/* 14 */     return f1;
/*    */   }
/*    */   
/* 17 */   public float biggest(float shu1, float shu2, float shu3, float shu4) { float shu = shu1;
/* 18 */     if (shu < shu2) shu = shu2;
/* 19 */     if (shu < shu3) shu = shu3;
/* 20 */     if (shu < shu4) shu = shu4;
/* 21 */     shu = shu * 2.0F - 3.0F;
/* 22 */     BigDecimal b = new BigDecimal(shu);
/* 23 */     float f1 = b.setScale(2, 4).floatValue();
/* 24 */     return f1;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\jiang\Lookbiggestorminimum.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */