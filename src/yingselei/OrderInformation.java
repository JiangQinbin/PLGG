/*    */ package yingselei;
/*    */ 
/*    */ 
/*    */ public class OrderInformation
/*    */ {
/*    */   public String orderID;
/*    */   public String tradingID;
/*    */   public String userName;
/*    */   public String specifications;
/*    */   public String addressID;
/*    */   public int number;
           public String tradingTime;
/*    */   public float total_price;
           public String merchants;
           public String manguoID;
           public float unit_price;
           public float weightof;
           public int payment;
           public String paymentTime;
           public float actualPayment;
		public OrderInformation() {
			super();
			// TODO Auto-generated constructor stub
		}
		public OrderInformation(String orderID, String tradingID, String userName, String specifications,
				String addressID, int number, String tradingTime, float total_price, String merchants, String manguoID,
				float unit_price, float weightof, int payment, String paymentTime, float actualPayment) {
			super();
			this.orderID = orderID;
			this.tradingID = tradingID;
			this.userName = userName;
			this.specifications = specifications;
			this.addressID = addressID;
			this.number = number;
			this.tradingTime = tradingTime;
			this.total_price = total_price;
			this.merchants = merchants;
			this.manguoID = manguoID;
			this.unit_price = unit_price;
			this.weightof = weightof;
			this.payment = payment;
			this.paymentTime = paymentTime;
			this.actualPayment = actualPayment;
		}
		public String getOrderID() {
			return orderID;
		}
		public void setOrderID(String orderID) {
			this.orderID = orderID;
		}
		public String getTradingID() {
			return tradingID;
		}
		public void setTradingID(String tradingID) {
			this.tradingID = tradingID;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getSpecifications() {
			return specifications;
		}
		public void setSpecifications(String specifications) {
			this.specifications = specifications;
		}
		public String getAddressID() {
			return addressID;
		}
		public void setAddressID(String addressID) {
			this.addressID = addressID;
		}
		public int getNumber() {
			return number;
		}
		public void setNumber(int number) {
			this.number = number;
		}
		public String getTradingTime() {
			return tradingTime;
		}
		public void setTradingTime(String tradingTime) {
			this.tradingTime = tradingTime;
		}
		public float getTotal_price() {
			return total_price;
		}
		public void setTotal_price(float total_price) {
			this.total_price = total_price;
		}
		public String getMerchants() {
			return merchants;
		}
		public void setMerchants(String merchants) {
			this.merchants = merchants;
		}
		public String getManguoID() {
			return manguoID;
		}
		public void setManguoID(String manguoID) {
			this.manguoID = manguoID;
		}
		public float getUnit_price() {
			return unit_price;
		}
		public void setUnit_price(float unit_price) {
			this.unit_price = unit_price;
		}
		public float getWeightof() {
			return weightof;
		}
		public void setWeightof(float weightof) {
			this.weightof = weightof;
		}
		public int getPayment() {
			return payment;
		}
		public void setPayment(int payment) {
			this.payment = payment;
		}
		public String getPaymentTime() {
			return paymentTime;
		}
		public void setPaymentTime(String paymentTime) {
			this.paymentTime = paymentTime;
		}
		public float getActualPayment() {
			return actualPayment;
		}
		public void setActualPayment(float actualPayment) {
			this.actualPayment = actualPayment;
		}
		
           
           
/*    */   
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\yingselei\OrderInformation.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */