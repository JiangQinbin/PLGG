/*    */ package jiang;
/*    */ 
/*    */ import com.google.gson.JsonArray;
/*    */ import com.google.gson.JsonObject;
/*    */ import dingcengjiekou.AddressInformationDAOlmg;
/*    */ import java.util.List;
/*    */ import yingselei.UserAddress;
/*    */ 
/*    */ public class AddressConnection
/*    */ {
/*    */   public JsonObject address(String id)
/*    */   {
/* 13 */     AddressInformationDAOlmg dao = new AddressInformationDAOlmg();
/* 14 */     List<UserAddress> list = dao.select3(id);
/* 15 */     JsonObject object1 = new JsonObject();
/* 16 */     JsonArray array = new JsonArray();
/* 17 */     for (int i = 0; i < list.size(); i++) {
/* 18 */       JsonObject object12 = new JsonObject();
/* 19 */       UserAddress address = (UserAddress)list.get(i);
/* 20 */       object12.addProperty("consigneeName", address.getConsigneeName());
/* 21 */       object12.addProperty("mobile", address.getMobile());
/* 22 */       object12.addProperty("consigneeAddress", address.getConsigneeAddress());
/* 23 */       object12.addProperty("addressID", address.getAddressID());
                
               object12.addProperty("region", address.getFullAddress().replaceAll(address.getConsigneeAddress(), "")); 
/* 24 */       array.add(object12);
/*    */     }
/* 26 */     object1.add("languages", array);
/*    */     
/* 28 */     return object1;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\jiang\AddressConnection.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */