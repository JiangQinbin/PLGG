/*    */ package yingselei;

/*    */
/*    */ public class UserAddress
/*    */ {
	/*    */ private String username;
	private String consigneeName;
	private String provinceId;
	private String cityId;
	private String countyId;
	private String townId;
	private String consigneeAddress;
	private String mobile;
	private String fullAddress;
	private String addressID;

	public UserAddress() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserAddress(String username, String consigneeName, String provinceId, String cityId, String countyId,
			String townId, String consigneeAddress, String mobile, String fullAddress, String addressID) {
		super();
		this.username = username;
		this.consigneeName = consigneeName;
		this.provinceId = provinceId;
		this.cityId = cityId;
		this.countyId = countyId;
		this.townId = townId;
		this.consigneeAddress = consigneeAddress;
		this.mobile = mobile;
		this.fullAddress = fullAddress;
		this.addressID = addressID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getConsigneeName() {
		return consigneeName;
	}

	public void setConsigneeName(String consigneeName) {
		this.consigneeName = consigneeName;
	}

	public String getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}

	public String getCityId() {
		return cityId;
	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

	public String getCountyId() {
		return countyId;
	}

	public void setCountyId(String countyId) {
		this.countyId = countyId;
	}

	public String getTownId() {
		return townId;
	}

	public void setTownId(String townId) {
		this.townId = townId;
	}

	public String getConsigneeAddress() {
		return consigneeAddress;
	}

	public void setConsigneeAddress(String consigneeAddress) {
		this.consigneeAddress = consigneeAddress;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getFullAddress() {
		return fullAddress;
	}

	public void setFullAddress(String fullAddress) {
		this.fullAddress = fullAddress;
	}

	public String getAddressID() {
		return addressID;
	}

	public void setAddressID(String addressID) {
		this.addressID = addressID;
	}
}

/*
 * Location: F:\jiang\WEB-INF\classes\!\yingselei\UserAddress.class Java
 * compiler version: 8 (52.0) JD-Core Version: 0.7.1
 */