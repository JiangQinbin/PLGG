package yingselei;

public class OrderQuery {
	private String manguoname;
	private String username;
	private String guige;
	private int number;
	private float paymentamount;
	private float danjia;
	private float junzhong;
	private String paymentTime;
	private String consignee;
	private String phone;
	private String address;
	private String manguoaId;
	private String ordernumber;
	public OrderQuery() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderQuery(String manguoname, String username, String guige, int number, float paymentamount, float danjia,
			float junzhong, String paymentTime, String consignee, String phone, String address, String manguoaId) {
		super();
		this.manguoname = manguoname;
		this.username = username;
		this.guige = guige;
		this.number = number;
		this.paymentamount = paymentamount;
		this.danjia = danjia;
		this.junzhong = junzhong;
		this.paymentTime = paymentTime;
		this.consignee = consignee;
		this.phone = phone;
		this.address = address;
		this.manguoaId = manguoaId;
	}
	
	public String getOrdernumber() {
		return ordernumber;
	}
	public void setOrdernumber(String ordernumber) {
		this.ordernumber = ordernumber;
	}
	public String getManguoname() {
		return manguoname;
	}
	public void setManguoname(String manguoname) {
		this.manguoname = manguoname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGuige() {
		return guige;
	}
	public void setGuige(String guige) {
		this.guige = guige;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public float getPaymentamount() {
		return paymentamount;
	}
	public void setPaymentamount(float paymentamount) {
		this.paymentamount = paymentamount;
	}
	public float getDanjia() {
		return danjia;
	}
	public void setDanjia(float danjia) {
		this.danjia = danjia;
	}
	public float getJunzhong() {
		return junzhong;
	}
	public void setJunzhong(float junzhong) {
		this.junzhong = junzhong;
	}
	public String getPaymentTime() {
		return paymentTime;
	}
	public void setPaymentTime(String paymentTime) {
		this.paymentTime = paymentTime;
	}
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getManguoaId() {
		return manguoaId;
	}
	public void setManguoaId(String manguoaId) {
		this.manguoaId = manguoaId;
	}
	
	

}
