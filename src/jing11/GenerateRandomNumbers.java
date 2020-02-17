/*    */ package jing11;
/*    */ 
/*    */ import java.util.Random;
/*    */ 
/*    */ public class GenerateRandomNumbers {
/*    */   public String RandomNumbers() {
/*  7 */     int flag = new Random().nextInt(999999);
/*  8 */     if (flag < 100000)
/*    */     {
/* 10 */       flag += 100000;
/*    */     }
/* 12 */     String flag1 = flag+"";
/* 13 */     return flag1;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\jing11\GenerateRandomNumbers.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */