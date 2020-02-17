/*    */ package yanzhengma;
/*    */ 
/*    */ import com.submail.lib.MESSAGEXsend;
/*    */ 
/*    */ public class fasongyanzhengma
/*    */ {
/*    */   public String Sendverificationcode(String phone, String Vcode)
/*    */   {
/*  9 */     String appid = "19744";
/* 10 */     String appkey = "bfb5518be99be15065231fe0bda88ff4";
/* 11 */     String signtype = "md5";
/* 12 */     com.submail.utils.AppConfig config = com.submail.utils.ConfigLoader.createConfig(appid, appkey, signtype);
/* 13 */     MESSAGEXsend submail = new MESSAGEXsend(config);
/* 14 */     submail.addTo(phone);
/* 15 */     submail.setProject("iTYUd2");
/* 16 */     submail.addVar("code", Vcode);
/* 17 */     submail.addVar("minue", Vcode);
/* 18 */     String bString = submail.xsend();
/* 19 */     return bString;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\yanzhengma\fasongyanzhengma.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */