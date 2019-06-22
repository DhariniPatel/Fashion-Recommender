package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ManagesubcategoryDAO;
import VO.ManagecategoryVO;
import VO.ManagesubcategoryVO;

/**
 * Servlet implementation class CompanyManagesubcategoryController
 */
@WebServlet("/CompanyManagesubcategoryController")
public class CompanyManagesubcategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CompanyManagesubcategoryController() {
        super();
   
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag =request.getParameter("flag");

		if(flag.equals("loadCategory")){
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
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		int subcategoryId=Integer.parseInt(request.getParameter("subcategoryId"));
		
		ManagesubcategoryVO managesubcategoryVO=new ManagesubcategoryVO();
		managesubcategoryVO.setSubcategoryId(subcategoryId);
		
		ManagesubcategoryDAO managesubcategoryDAO=new ManagesubcategoryDAO();
		List ls=managesubcategoryDAO.update(managesubcategoryVO);
		
		List cList=managesubcategoryDAO.loadCategory(managesubcategoryVO);
		
		HttpSession session=request.getSession();
		
		
		session.setAttribute("clist",cList);
		
		session.setAttribute("subcategorylist",ls);
		
	//	System.out.println("Countrylist>>>>>>"+cList.size());
	//	System.out.println("statelist>>>>>>"+ls.size());
		
		response.sendRedirect("company/searchManagesubcategoryUpdate.jsp");
	
		
	}


	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		int subcategoryId=Integer.parseInt(request.getParameter("subcategoryId"));
		String subcategoryName=request.getParameter("subcategoryName");
		String subcategoryDescription=request.getParameter("subcategoryDescription");
		String deleteStatus=request.getParameter("deleteStatus");
		
		ManagesubcategoryVO managesubcategoryVO=new ManagesubcategoryVO();
		managesubcategoryVO.setSubcategoryId(subcategoryId);
		managesubcategoryVO.setDeleteStatus("Deactivate");
		ManagesubcategoryDAO managesubcategoryDAO=new ManagesubcategoryDAO();
		managesubcategoryDAO.delete(managesubcategoryVO);
		
		dosearch(request,response);
		
		
	}


	private void dosearch(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		ManagesubcategoryVO managesubcategoryVO=new ManagesubcategoryVO();
		ManagesubcategoryDAO managesubcategoryDAO=new ManagesubcategoryDAO();
		List ls=managesubcategoryDAO.search(managesubcategoryVO);
	
		HttpSession session=request.getSession();
		session.setAttribute("subcategorylist",ls);
		response.sendRedirect("company/searchManagesubcategory.jsp");
	}


	private void loadCategory(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		ManagesubcategoryVO managesubcategoryVO=new ManagesubcategoryVO();
		
		ManagesubcategoryDAO managesubcategoryDAO=new ManagesubcategoryDAO();
		List ls=managesubcategoryDAO.loadCategory(managesubcategoryVO);
		//System.out.println(ls.size());
		HttpSession session=request.getSession();
		session.setAttribute("subcategorylist",ls);
		response.sendRedirect("company/addManagesubcategory.jsp");
		
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
//			    System.out.println("enter in final update");
				finalupdate(request,response);	
				dosearch(request,response);
		}
	
	}


	private void finalupdate(HttpServletRequest request, HttpServletResponse response) 
	{
		
//		System.out.println("finally invoke");
		int subcategoryId=Integer.parseInt(request.getParameter("subcategoryId"));
//		System.out.println("after");
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
//		System.out.println(countryId);
		ManagecategoryVO managecategoryVO = new ManagecategoryVO();
		managecategoryVO.setCategoryId(categoryId);
		
		String subcategoryName=request.getParameter("subcategoryName");
		String subcategoryDescription=request.getParameter("subcategoryDescription");
		
		ManagesubcategoryVO managesubcategoryVO=new ManagesubcategoryVO();
		managesubcategoryVO.setSubcategoryId(subcategoryId);
		managesubcategoryVO.setSubcategoryName(subcategoryName);
		managesubcategoryVO.setSubcategoryDescription(subcategoryDescription);
		managesubcategoryVO.setDeleteStatus("Active");
		managesubcategoryVO.setManagecategoryVO(managecategoryVO);
		ManagesubcategoryDAO managesubcategoryDAO=new ManagesubcategoryDAO();
		managesubcategoryDAO.finalupdate(managesubcategoryVO);

		
	}


	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
		
		ManagecategoryVO managecategoryVO=new ManagecategoryVO();
		managecategoryVO.setCategoryId(categoryId);
		
		String subcategoryName=request.getParameter("subcategoryName");
		String subcategoryDescription=request.getParameter("subcategoryDescription");
		
		ManagesubcategoryVO managesubcategoryVO=new ManagesubcategoryVO();
		managesubcategoryVO.setSubcategoryName(subcategoryName);
		managesubcategoryVO.setSubcategoryDescription(subcategoryDescription);
		managesubcategoryVO.setDeleteStatus("Active");
		managesubcategoryVO.setManagecategoryVO(managecategoryVO);
		
		
		ManagesubcategoryDAO managesubcategoryDAO=new ManagesubcategoryDAO();
		managesubcategoryDAO.insert(managesubcategoryVO);
		response.sendRedirect("company/addManagesubcategory.jsp");
		
	}

}
