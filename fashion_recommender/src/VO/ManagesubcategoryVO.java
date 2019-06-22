package VO;

public class ManagesubcategoryVO 
{
	private int subcategoryId;
	private int categoryId;
	private String subcategoryName;
	private String subcategoryDescription;
	private String deleteStatus;
	private ManagecategoryVO managecategoryVO;
	public int getSubcategoryId() {
		return subcategoryId;
	}
	public void setSubcategoryId(int subcategoryId) {
		this.subcategoryId = subcategoryId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getSubcategoryName() {
		return subcategoryName;
	}
	public void setSubcategoryName(String subcategoryName) {
		this.subcategoryName = subcategoryName;
	}
	public String getSubcategoryDescription() {
		return subcategoryDescription;
	}
	public void setSubcategoryDescription(String subcategoryDescription) {
		this.subcategoryDescription = subcategoryDescription;
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
		
}
