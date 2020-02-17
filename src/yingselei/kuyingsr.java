/*    */ package yingselei;
/*    */ 
/*    */ public class kuyingsr
/*    */ {
/*    */   public String yonghuming;
/*    */   public String mima;
/*    */   public String nicheng;
/*    */   public String shoujihao;
           public int shifounonghu;
/*    */   
/*    */   public kuyingsr() {}
/*    */   
/*    */   
/*    */   
/* 20 */   public String getYonghuming() { return this.yonghuming; }
public kuyingsr(String yonghuming, String mima, String nicheng, String shoujihao, int shifounonghu) {
	super();
	this.yonghuming = yonghuming;
	this.mima = mima;
	this.nicheng = nicheng;
	this.shoujihao = shoujihao;
	this.shifounonghu = shifounonghu;
}
/*    */   
/*    */   public void setYonghuming(String yonghuming) {
/* 23 */     this.yonghuming = yonghuming;
/*    */   }
/*    */   
/* 26 */   public String getMima() { return this.mima; }
/*    */   
/*    */   public void setMima(String mima) {
/* 29 */     this.mima = mima;
/*    */   }
/*    */   
/* 32 */   public String getNicheng() { return this.nicheng; }
/*    */   
/*    */   public String getShoujihao() {
/* 35 */     return this.shoujihao;
/*    */   }
/*    */   
/* 38 */   public void setShoujihao(String shoujihao) { this.shoujihao = shoujihao; }
/*    */   
/*    */   public void setNicheng(String nicheng) {
/* 41 */     this.nicheng = nicheng;
/*    */   }
public int getShifounonghu() {
	return shifounonghu;
}
public void setShifounonghu(int shifounonghu) {
	this.shifounonghu = shifounonghu;
}

/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\yingselei\kuyingsr.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */