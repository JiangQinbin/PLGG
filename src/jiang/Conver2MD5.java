/*    */ package jiang;
/*    */ 
/*    */ import java.security.MessageDigest;
/*    */ 
/*    */ public final class Conver2MD5
/*    */ {
/*    */   public static String getMD5(String str)
/*    */   {
/*  9 */     String reStr = null;
/*    */     try {
/* 11 */       MessageDigest md = MessageDigest.getInstance("MD5");
/* 12 */       md.update(str.getBytes());
/* 13 */       byte[] ss = md.digest();
/* 14 */       reStr = bytes2String(ss);
/*    */     }
/*    */     catch (java.security.NoSuchAlgorithmException localNoSuchAlgorithmException) {}
/*    */     
/* 18 */     return reStr;
/*    */   }
/*    */   
/*    */   public static String getSHA(String str) {
/* 22 */     String reStr = null;
/*    */     try {
/* 24 */       MessageDigest sha = MessageDigest.getInstance("SHA");
/* 25 */       sha.update(str.getBytes());
/* 26 */       byte[] ss = sha.digest();
/* 27 */       reStr = bytes2String(ss);
/*    */     }
/*    */     catch (java.security.NoSuchAlgorithmException localNoSuchAlgorithmException) {}
/*    */     
/* 31 */     return reStr;
/*    */   }
/*    */   
/*    */   private static String bytes2String(byte[] aa) {
/* 35 */     String hash = "";
/* 36 */     for (int i = 0; i < aa.length; i++) { int temp;
/*    */       int temp1;
/* 38 */       if (aa[i] < 0) {
/* 39 */         temp1 = 256 + aa[i];
/*    */       } else
/* 41 */         temp1 = aa[i];
/* 42 */       if (temp1 < 16)
/* 43 */         hash = hash + "0";
/* 44 */       hash = hash + Integer.toString(temp1, 16);
/*    */     }
/* 46 */     hash = hash.toUpperCase();
/* 47 */     return hash;
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\jiang\Conver2MD5.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */