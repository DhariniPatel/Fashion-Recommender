package VO;

public class CartDetailVO {
	
	private int cartId;
	private String productPrice;
	private LoginVO loginVO;
	private  AddproductVO addproductVO;
	private CartMasterVO cartMasterVO;
	
	
	
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public AddproductVO getAddproductVO() {
		return addproductVO;
	}
	public void setAddproductVO(AddproductVO addproductVO) {
		this.addproductVO = addproductVO;
	}
	public CartMasterVO getCartMasterVO() {
		return cartMasterVO;
	}
	public void setCartMasterVO(CartMasterVO cartMasterVO) {
		this.cartMasterVO = cartMasterVO;
	}
	public String getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	private String deleteStatus;
	
	
}
