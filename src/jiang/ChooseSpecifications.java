/*    */ package jiang;
/*    */ 
/*    */ import dingcengjiekou.mgriceDAOlmg;
/*    */ 
/*    */ public class ChooseSpecifications
/*    */ {
/*    */   public yingselei.mangoprice price(String mangoname) {
/*  8 */     mgriceDAOlmg dao = new mgriceDAOlmg();
/*  9 */     yingselei.mangoprice mm = dao.select1(mangoname);
/* 10 */     
/* 11 */     
/* 12 */     return mm;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\jiang\ChooseSpecifications.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */