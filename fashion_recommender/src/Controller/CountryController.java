package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.List;

import DAO.CountryDAO;
import VO.CountryVO;
import jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm;
@WebServlet("/CountryController")
public class CountryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CountryController() 
    {
        super();
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		
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
		int countryId=Integer.parseInt(request.getParameter("countryId"));
		String countryName=request.getParameter("countryName");
		String countryDescription=request.getParameter("countryDescription");
		
		CountryVO countryVO=new CountryVO();
		countryVO.setCountryId(countryId);
		
		CountryDAO countryDAO=new CountryDAO();
		List ls=countryDAO.update(countryVO);
		HttpSession session=request.getSession();
		session.setAttribute("y",ls);
		
		countryVO.setCountryId(countryId);
		response.sendRedirect("admin/countryUpdate.jsp");
		
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		int countryId=Integer.parseInt(request.getParameter("countryId"));
		String countryName=request.getParameter("countryName");
		String countryDescription=request.getParameter("countryDescription");
		String status=request.getParameter("status");
		
		CountryVO countryVO=new CountryVO();
		countryVO.setCountryId(countryId);
		countryVO.setStatus("Deactivate");
		CountryDAO countryDAO=new CountryDAO();
		countryDAO.delete(countryVO);
		
		dosearch(request,response);
	}

	private void dosearch(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		
		CountryVO countryVO=new CountryVO();
		
		CountryDAO countryDAO=new CountryDAO();
		List ls=countryDAO.search(countryVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("x",ls);
		response.sendRedirect("admin/managecountry_table.jsp");
		
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
		
		int countryId=Integer.parseInt(request.getParameter("id"));
		String countryName=request.getParameter("countryName");
		String countryDescription=request.getParameter("countryDescription");
		
		CountryVO countryVO=new CountryVO();
		countryVO.setCountryId(countryId);
		countryVO.setCountryName(countryName);
		countryVO.setCountryDescription(countryDescription);
		countryVO.setStatus("Active");
		CountryDAO countryDAO=new CountryDAO();
		countryDAO.finalupdate(countryVO);
		
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		// TODO Auto-generated method stub
		
		
		String countryName=request.getParameter("countryName");
		String countryDescription=request.getParameter("countryDescription");
		
		CountryVO countryVO=new CountryVO();
		countryVO.setCountryName(countryName);
		countryVO.setCountryDescription(countryDescription);
		countryVO.setStatus("Active");
		
		CountryDAO countryDAO=new CountryDAO();
		countryDAO.insert(countryVO);
		response.sendRedirect("admin/Country.jsp");
	}

}
