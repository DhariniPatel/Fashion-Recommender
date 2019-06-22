package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CountryDAO;
import DAO.ManagecategoryDAO;
import VO.CountryVO;
import VO.ManagecategoryVO;


@WebServlet("/ManagecategoryController")
public class ManagecategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ManagecategoryController() {
        super();
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag =request.getParameter("flag");
		
		if(flag.equals("View"))
		{
			dosearch(request,response);
		}
		if(flag.equals("delete"))
		{
			delete(request,response);
		}
		if(flag.equals("update"))
		{
			update(request,response);
		}
	
	}

	
	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
		String categoryName=request.getParameter("categoryName");
		String categoryDescription=request.getParameter("categoryDescription");
		
		ManagecategoryVO managecategoryVO=new ManagecategoryVO();
		managecategoryVO.setCategoryId(categoryId);
		
		ManagecategoryDAO managecategoryDAO=new ManagecategoryDAO();
		List ls=managecategoryDAO.update(managecategoryVO);
		HttpSession session=request.getSession();
		session.setAttribute("clist",ls);
		
		managecategoryVO.setCategoryId(categoryId);
		response.sendRedirect("admin/searchManagecategoryUpdate.jsp");

		
		
		
						
	}


	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException
	
	{
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
		String categoryName=request.getParameter("categoryName");
		String categoryDescription=request.getParameter("categoryDescription");
		String deleteStatus=request.getParameter("deleteStatus");
		
		ManagecategoryVO managecategoryVO=new ManagecategoryVO();
		managecategoryVO.setCategoryId(categoryId);
		managecategoryVO.setDeleteStatus("Deactive");
		
		ManagecategoryDAO managecategoryDAO=new ManagecategoryDAO();
		managecategoryDAO.delete(managecategoryVO);
		
		
		dosearch(request,response);
		
	}


	private void dosearch(HttpServletRequest request, HttpServletResponse response) throws IOException
	
	{
		
		ManagecategoryVO managecategoryVO=new ManagecategoryVO();
		ManagecategoryDAO managecategoryDAO=new ManagecategoryDAO();
		List ls=managecategoryDAO.search(managecategoryVO);
		
		
		HttpSession session=request.getSession();
		session.setAttribute("categorylist",ls);
		response.sendRedirect("admin/searchManagecategory.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag =request.getParameter("flag");
		
		if(flag.equals("Submit"))
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
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
		String categoryName=request.getParameter("categoryName");
		String categoryDescription=request.getParameter("categoryDescription");
		
		ManagecategoryVO managecategoryVO=new ManagecategoryVO();
		managecategoryVO.setCategoryId(categoryId);
		managecategoryVO.setCategoryName(categoryName);
		managecategoryVO.setCategoryDescription(categoryDescription);
		managecategoryVO.setDeleteStatus("Active");
		
		ManagecategoryDAO managecategoryDAO=new ManagecategoryDAO();
		managecategoryDAO.finalupdate(managecategoryVO);
		
	}


	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String categoryName=request.getParameter("categoryName");
		String categoryDescription=request.getParameter("categoryDescription");
		
		ManagecategoryVO managecategoryVO=new ManagecategoryVO();
		managecategoryVO.setCategoryName(categoryName);
		managecategoryVO.setCategoryDescription(categoryDescription);
		managecategoryVO.setDeleteStatus("Active");
		
		ManagecategoryDAO managecategoryDAO=new ManagecategoryDAO();
		managecategoryDAO.insert(managecategoryVO);
		response.sendRedirect("admin/addManagecategory.jsp");
		
	}

}
