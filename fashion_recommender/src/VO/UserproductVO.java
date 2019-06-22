package VO;

public class UserproductVO {
	
	private int productId;
	private String productName;
	private String productSize;
	private String productPrice;
	private String productQuantity;
	private String brandName;
	private String productDescription;
	private String deleteStatus;
	private ManagecategoryVO managecategoryVO;
	private ManagesubcategoryVO managesubcategoryVO;
	
	
	
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public String getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	public ManagecategoryVO getManagecategoryVO() {
		return managecategoryVO;
	}
	public void setManagecategoryVO(ManagecategoryVO managecategoryVO) {
		this.managecategoryVO = managecategoryVO;
	}
	public ManagesubcategoryVO getManagesubcategoryVO() {
		return managesubcategoryVO;
	}
	public void setManagesubcategoryVO(ManagesubcategoryVO managesubcategoryVO) {
		this.managesubcategoryVO = managesubcategoryVO;
	}

}
