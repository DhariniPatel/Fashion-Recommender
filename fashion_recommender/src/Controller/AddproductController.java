package Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.AddproductDAO;
import DAO.ManagesubcategoryDAO;
import DAO.StateDAO;
import VO.AddproductVO;
import VO.CountryVO;
import VO.ManagecategoryVO;
import VO.ManagesubcategoryVO;


@WebServlet("/AddproductController")
@MultipartConfig
public class AddproductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddproductController() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag =request.getParameter("flag");

		if(flag.equals("loadCategory"))
		{
			loadCategory(request,response);
			
		}
		else if(flag.equals("search"))
		{
			dosearch(request,response);
		}
		else if(flag.equals("delete"))
		{
			delete(request,response);
		}
		else if(flag.equals("update"))
		{
			update(request,response);
		}
		else if(flag.equals("viewDetail"))
		{
			viewDetail(request,response);
		}
		else if(flag.equals("loadProductAjax"))
		{
			loadProductAjax(request,response);
		}
	
	}

	private void loadProductAjax(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		List ls=new ArrayList();
		
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
		
		
		ManagecategoryVO managecategoryVO=new ManagecategoryVO();
		managecategoryVO.setCategoryId(categoryId);
		
		ManagesubcategoryDAO managesubcategoryDAO= new ManagesubcategoryDAO();
		ls=managesubcategoryDAO.loadp(managecategoryVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("subcategorylist", ls);
	
		response.sendRedirect("admin/jasonProduct.jsp");
		
	}


	private void viewDetail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
int productId=Integer.parseInt(request.getParameter("productId"));
		
		AddproductVO addproductVO=new AddproductVO();
		addproductVO.setProductId(productId);
		AddproductDAO addproductDAO=new AddproductDAO();
		List ls=addproductDAO.update(addproductVO);
		
		HttpSession session=request.getSession();
		
		System.out.println("List Size>>>>>>>"+ls.size());
		session.setAttribute("productlist",ls);
		response.sendRedirect("user/topdesc.jsp");
		
		
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		int productId=Integer.parseInt(request.getParameter("productId"));
		
		AddproductVO addproductVO=new AddproductVO();
		addproductVO.setProductId(productId);
		
		AddproductDAO addproductDAO=new AddproductDAO();
		List ls=addproductDAO.update(addproductVO);
		
		List cList=addproductDAO.loadCategory(addproductVO);
		List cList1=addproductDAO.loadSubcategory(addproductVO);
		HttpSession session=request.getSession();
		
		session.setAttribute("productlist",ls);
		session.setAttribute("categorylist",cList);
		session.setAttribute("subcategorylist",cList1);
		System.out.println("Countrylist>>>>>>"+cList.size());
		System.out.println("Countrylist>>>>>>"+cList1.size());
		System.out.println("statelist>>>>>>"+ls.size());
		response.sendRedirect("company/searchAddproductUpdate.jsp");

		
	}


	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		int productId=Integer.parseInt(request.getParameter("productId"));
		String productName=request.getParameter("productName");
		String productSize=request.getParameter("productSize");
		String productDescription=request.getParameter("productDescription");
		String deleteStatus=request.getParameter("deleteStatus");
		
		AddproductVO addproductVO=new AddproductVO();
		addproductVO.setProductId(productId);
		addproductVO.setDeleteStatus("Deactivate");
		AddproductDAO addproductDAO=new AddproductDAO();
		addproductDAO.delete(addproductVO);
		
		dosearch(request,response);
		
	}


	private void dosearch(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		AddproductVO addproductVO=new AddproductVO();
		
		AddproductDAO addproductDAO=new AddproductDAO();
		List productList=addproductDAO.search(addproductVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("productlist",productList);
		response.sendRedirect("company/searchAddproduct.jsp");
		
	}


	private void loadCategory(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		
		AddproductVO addproductVO=new AddproductVO();
		
		AddproductDAO addproductDAO=new AddproductDAO();
		List categoryList=addproductDAO.loadCategory(addproductVO);
		HttpSession session=request.getSession();
		session.setAttribute("categorylist",categoryList);
		
		List subcategoryList=addproductDAO.loadSubcategory(addproductVO);
		session.setAttribute("subcategorylist",subcategoryList);
		response.sendRedirect("company/addProduct.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag =request.getParameter("flag");
		if(flag.equals("insert"))
		{
				insert(request,response);	
		}
		else if(flag.equals("finalupdate"))
		{
				finalupdate(request,response);	
				dosearch(request,response);
		}
	}


	private void finalupdate(HttpServletRequest request, HttpServletResponse response)
	{
		
		int productId=Integer.parseInt(request.getParameter("productId"));
		int subcategoryId=Integer.parseInt(request.getParameter("subcategoryId"));
//		System.out.println("after");
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
//		System.out.println(countryId);
		ManagecategoryVO managecategoryVO = new ManagecategoryVO();
		managecategoryVO.setCategoryId(categoryId);
		
		ManagesubcategoryVO managesubcategoryVO = new ManagesubcategoryVO();
		managesubcategoryVO.setSubcategoryId(subcategoryId);
		
		String productName=request.getParameter("productName");
		String productSize=request.getParameter("productSize");
		String productPrice=request.getParameter("productPrice");
		String productQuantity=request.getParameter("productQuantity");
		String brandName=request.getParameter("brandName");
		String productDescription=request.getParameter("productDescription");
		
		AddproductVO addproductVO=new AddproductVO();
		addproductVO.setProductId(productId);
		addproductVO.setProductName(productName);
		addproductVO.setProductSize(productSize);
		addproductVO.setProductPrice(productPrice);
		addproductVO.setProductQuantity(productQuantity);
		addproductVO.setBrandName(brandName);
		addproductVO.setProductDescription(productDescription);
		addproductVO.setDeleteStatus("Active");
		addproductVO.setManagecategoryVO(managecategoryVO);
		addproductVO.setManagesubcategoryVO(managesubcategoryVO);
		AddproductDAO addproductDAO=new AddproductDAO();
		addproductDAO.finalupdate(addproductVO);
	
	}


	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
		ManagecategoryVO managecategoryVO=new ManagecategoryVO();
		managecategoryVO.setCategoryId(categoryId);
		
		int subcategoryId=Integer.parseInt(request.getParameter("subcategoryId"));
		ManagesubcategoryVO managesubcategoryVO=new ManagesubcategoryVO();
		managesubcategoryVO.setSubcategoryId(subcategoryId);
		
		String productName=request.getParameter("productName");
		String productSize=request.getParameter("productSize");
		String productPrice=request.getParameter("productPrice");
		String productDescription=request.getParameter("productDescription");
		String productQuantity=request.getParameter("productQuantity");
		String brandName=request.getParameter("brandName");
		
		AddproductVO addproductVO=new AddproductVO();
		addproductVO.setProductName(productName);
		addproductVO.setProductQuantity(productQuantity);
		addproductVO.setBrandName(brandName);
		addproductVO.setProductSize(productSize);
		addproductVO.setProductPrice(productPrice);
		addproductVO.setProductDescription(productDescription);
		addproductVO.setDeleteStatus("Active");
		addproductVO.setManagecategoryVO(managecategoryVO);
		addproductVO.setManagesubcategoryVO(managesubcategoryVO);
		
		String fileName="";
		
		for(Part filePart : request.getParts())
		{
			if(filePart.getSubmittedFileName()!=null && !filePart.getSubmittedFileName().equals(""))
			{
				 fileName = filePart.getSubmittedFileName();
				InputStream fileContent = filePart.getInputStream();
				// ... (do your job here)

				byte[] buffer = new byte[fileContent.available()];
				fileContent.read(buffer);

				String filePath = getServletContext().getRealPath(request.getServletPath());

				System.out.println("filepath :: "+filePath);

				int path = filePath.lastIndexOf('\\');
				String path1= filePath.substring(0, path) + "\\doc\\";
				System.out.println("XC");

				File targetEncryptFile = new File(path1+fileName);

				OutputStream outStream = new FileOutputStream(targetEncryptFile);
				outStream.write(buffer);

				System.out.println("File Output Path :: "+path1+fileName);

				outStream.close();
				addproductVO.setFileName(fileName);
				addproductVO.setFilePath(path1);
			}
		}
		
		AddproductDAO addproductDAO=new AddproductDAO();
		addproductDAO.insert(addproductVO);
		response.sendRedirect("company/addProduct.jsp");
		

	}

}
