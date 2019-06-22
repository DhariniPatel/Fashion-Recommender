package VO;

public class CartMasterVO {

	private int cartMasterId;
	private String totalPrice;
	private LoginVO loginVO;
	private String deleteStatus;
	private String address;
	private String postcode;
	
	
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public int getCartMasterId() {
		return cartMasterId;
	}
	public void setCartMasterId(int cartMasterId) {
		this.cartMasterId = cartMasterId;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	public String getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
}
