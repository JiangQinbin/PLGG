/*    */ package jiang;
/*    */ 
/*    */ import com.google.gson.JsonArray;
/*    */ import com.google.gson.JsonObject;
/*    */ import dingcengjiekou.mgriceDAOlmg;
/*    */ import java.math.BigDecimal;
/*    */ import java.util.List;
/*    */ import yingselei.mangoprice;
/*    */ 
/*    */ 
/*    */ public class Mangoprice
/*    */ {
/*    */   public JsonObject price()
/*    */   {
/* 15 */     mgriceDAOlmg dao = new mgriceDAOlmg();
/* 16 */     List<mangoprice> list = dao.select2();
/* 17 */     JsonObject object1 = new JsonObject();
/* 18 */     JsonArray array = new JsonArray();
/* 19 */     for (int i = 0; i < list.size(); i++) {
/* 20 */       JsonObject object12 = new JsonObject();
/* 21 */       float k = 2.0F;
/* 22 */       float[] jiade = new float[4];
/* 23 */       mangoprice mangoprice1 = (mangoprice)list.get(i);
/* 24 */       jiade[0] = mangoprice1.getDanjiadahao();
/* 25 */       jiade[1] = mangoprice1.getDanjiadazhong();
/* 26 */       jiade[2] = mangoprice1.getDanjiaxiaohao();
/* 27 */       jiade[3] = mangoprice1.getDanjiaziaozhong();
/* 28 */       float jiage = jiade[0];
/* 29 */       for (int j = 1; j < 4; j++) {
/* 30 */         if (jiage > jiade[j]) {
/* 31 */           jiage = jiade[j];
/*    */         }
/*    */       }
/* 34 */       jiage = jiage / k + 3.0F;
/*    */       
/* 36 */       BigDecimal b = new BigDecimal(jiage);
/* 37 */       float f1 = b.setScale(2, 4).floatValue();
/* 38 */       String jiage22 = f1+"";
               object12.addProperty("username", mangoprice1.getUsername());
               object12.addProperty("manguoname", mangoprice1.getManguoname());
/* 39 */       object12.addProperty("id", mangoprice1.getManguoID());
/* 40 */       object12.addProperty("number", Integer.valueOf(mangoprice1.getYeshouliang()));
/* 41 */       object12.addProperty("price", jiage22);
/* 42 */       array.add(object12);
/*    */     }
/* 44 */     object1.add("languages", array);
/*    */     
/* 46 */     return object1;
/*    */   }

public JsonObject price1(String searchValue)
/*    */   {
/* 15 */     mgriceDAOlmg dao = new mgriceDAOlmg();
/* 16 */     List<mangoprice> list = dao.selectM(searchValue);
/* 17 */     JsonObject object1 = new JsonObject();
/* 18 */     JsonArray array = new JsonArray();
/* 19 */     for (int i = 0; i < list.size(); i++) {
/* 20 */       JsonObject object12 = new JsonObject();
/* 21 */       float k = 2.0F;
/* 22 */       float[] jiade = new float[4];
/* 23 */       mangoprice mangoprice1 = (mangoprice)list.get(i);
/* 24 */       jiade[0] = mangoprice1.getDanjiadahao();
/* 25 */       jiade[1] = mangoprice1.getDanjiadazhong();
/* 26 */       jiade[2] = mangoprice1.getDanjiaxiaohao();
/* 27 */       jiade[3] = mangoprice1.getDanjiaziaozhong();
/* 28 */       float jiage = jiade[0];
/* 29 */       for (int j = 1; j < 4; j++) {
/* 30 */         if (jiage > jiade[j]) {
/* 31 */           jiage = jiade[j];
/*    */         }
/*    */       }
/* 34 */       jiage = jiage / k + 3.0F;
/*    */       
/* 36 */       BigDecimal b = new BigDecimal(jiage);
/* 37 */       float f1 = b.setScale(2, 4).floatValue();
/* 38 */       String jiage22 = f1+"";
               object12.addProperty("username", mangoprice1.getUsername());
               object12.addProperty("manguoname", mangoprice1.getManguoname());
/* 39 */       object12.addProperty("id", mangoprice1.getManguoID());
/* 40 */       object12.addProperty("number", Integer.valueOf(mangoprice1.getYeshouliang()));
/* 41 */       object12.addProperty("price", jiage22);
/* 42 */       array.add(object12);
/*    */     }
/* 44 */     object1.add("languages", array);
/*    */     
/* 46 */     return object1;
/*    */   }

public JsonObject price2(String nonghu)
/*    */   {
/* 15 */     mgriceDAOlmg dao = new mgriceDAOlmg();
/* 16 */     List<mangoprice> list = dao.selectMG(nonghu);
/* 17 */     JsonObject object1 = new JsonObject();
/* 18 */     JsonArray array = new JsonArray();
/* 19 */     for (int i = 0; i < list.size(); i++) {
/* 20 */       JsonObject object12 = new JsonObject();
/* 21 */       float k = 2.0F;
/* 22 */       float[] jiade = new float[4];
/* 23 */       mangoprice mangoprice1 = (mangoprice)list.get(i);
/* 24 */       jiade[0] = mangoprice1.getDanjiadahao();
/* 25 */       jiade[1] = mangoprice1.getDanjiadazhong();
/* 26 */       jiade[2] = mangoprice1.getDanjiaxiaohao();
/* 27 */       jiade[3] = mangoprice1.getDanjiaziaozhong();
/* 28 */       float jiage = jiade[0];
/* 29 */       for (int j = 1; j < 4; j++) {
/* 30 */         if (jiage > jiade[j]) {
/* 31 */           jiage = jiade[j];
/*    */         }
/*    */       }
/* 34 */       jiage = jiage / k + 3.0F;
/*    */       
/* 36 */       BigDecimal b = new BigDecimal(jiage);
/* 37 */       float f1 = b.setScale(2, 4).floatValue();
/* 38 */       String jiage22 = f1+"";
               object12.addProperty("username", mangoprice1.getUsername());
               object12.addProperty("manguoname", mangoprice1.getManguoname());
/* 39 */       object12.addProperty("id", mangoprice1.getManguoID());
/* 40 */       object12.addProperty("number", Integer.valueOf(mangoprice1.getYeshouliang()));
/* 41 */       object12.addProperty("price", jiage22);
/* 42 */       array.add(object12);
/*    */     }
/* 44 */     object1.add("languages", array);
/*    */     
/* 46 */     return object1;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\jiang\Mangoprice.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */