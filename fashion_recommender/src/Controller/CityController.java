package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CityDAO;
import DAO.StateDAO;
import VO.CityVO;
import VO.CountryVO;
import VO.StateVO;


@WebServlet("/CityController")
public class CityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CityController()
    {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag =request.getParameter("flag");

		if(flag.equals("loadCountry"))
		{
			loadCountry(request,response);
			//loadState(request,response);
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
		else if(flag.equals("loadCityAjax"))
		{
			loadCityAjax(request,response);
		}

		
	}

	
	/*private void loadState(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		CityVO cityVO=new CityVO();
		
		CityDAO cityDAO=new CityDAO();
		List cityList=cityDAO.loadState(cityVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("statelist",cityList);
		response.sendRedirect("admin/addCity.jsp");
		
	}*/


	private void loadCityAjax(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//System.out.println("sdfghj");
		List ls=new ArrayList();
		
		int countryId=Integer.parseInt(request.getParameter("countryId"));
		
		
		CountryVO countryVO=new CountryVO();
		countryVO.setCountryId(countryId);
		
		StateDAO stateDAO=new StateDAO();
		ls=stateDAO.loads(countryVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("statelist", ls);
	
		response.sendRedirect("admin/jsn.jsp");
		
	}


	

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		int cityId=Integer.parseInt(request.getParameter("cityId"));
		
		CityVO cityVO=new CityVO();
		cityVO.setCityId(cityId);
		
		CityDAO cityDAO=new CityDAO();
		List ls=cityDAO.update(cityVO);
		
		List cList=cityDAO.loadCountry(cityVO);
		List cList1=cityDAO.loadState(cityVO);
		HttpSession session=request.getSession();
		
		session.setAttribute("citylist",ls);
		session.setAttribute("countrylist",cList);
		session.setAttribute("statelist",cList1);
		System.out.println("Countrylist>>>>>>"+cList.size());
		System.out.println("Countrylist>>>>>>"+cList1.size());
		System.out.println("statelist>>>>>>"+ls.size());
		response.sendRedirect("admin/searchCityUpdate.jsp");

		
	}


	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		int cityId=Integer.parseInt(request.getParameter("cityId"));
		String cityName=request.getParameter("cityName");
		String cityDescription=request.getParameter("cityDescription");
		String deleteStatus=request.getParameter("deleteStatus");
		
		CityVO cityVO=new CityVO();
		cityVO.setCityId(cityId);
		cityVO.setDeleteStatus("Deactivate");
		CityDAO cityDAO=new CityDAO();
		cityDAO.delete(cityVO);
		
		dosearch(request,response);
		
		
	}


	private void dosearch(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		CityVO cityVO=new CityVO();
		
		CityDAO cityDAO=new CityDAO();
		List cityList=cityDAO.search(cityVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("citylist",cityList);
		response.sendRedirect("admin/searchCity.jsp");
	}


	
	private void loadCountry(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		CityVO cityVO=new CityVO();
		
		CityDAO cityDAO=new CityDAO();
		List cityList=cityDAO.loadCountry(cityVO);
		HttpSession session=request.getSession();
		session.setAttribute("countrylist",cityList);
		
		List cList=cityDAO.loadState(cityVO);
		session.setAttribute("statelist",cList);
		response.sendRedirect("admin/addCity.jsp");
		
		
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
		int cityId=Integer.parseInt(request.getParameter("cityId"));
		int stateId=Integer.parseInt(request.getParameter("stateId"));
//		System.out.println("after");
		int countryId=Integer.parseInt(request.getParameter("countryId"));
//		System.out.println(countryId);
		CountryVO countryVO = new CountryVO();
		countryVO.setCountryId(countryId);
		
		StateVO stateVO = new StateVO();
		stateVO.setStateId(stateId);
		
		String cityName=request.getParameter("cityName");
		String cityDescription=request.getParameter("cityDescription");
		
		CityVO cityVO=new CityVO();
		cityVO.setCityId(cityId);
		cityVO.setCityName(cityName);
		cityVO.setCityDescription(cityDescription);
		cityVO.setDeleteStatus("Active");
		cityVO.setCountryVO(countryVO);
		cityVO.setStateVO(stateVO);
		CityDAO cityDAO=new CityDAO();
		cityDAO.finalupdate(cityVO);
	
		
	}


	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		
		int countryId=Integer.parseInt(request.getParameter("countryId"));
		CountryVO countryVO=new CountryVO();
		countryVO.setCountryId(countryId);
		
		int stateId=Integer.parseInt(request.getParameter("stateId"));
		StateVO stateVO=new StateVO();
		stateVO.setStateId(stateId);
		
		String cityName=request.getParameter("cityName");
		String cityDescription=request.getParameter("cityDescription");
		
		CityVO cityVO=new CityVO();
		cityVO.setCityName(cityName);
		cityVO.setCityDescription(cityDescription);
		cityVO.setDeleteStatus("Active");
		cityVO.setCountryVO(countryVO);
		cityVO.setStateVO(stateVO);
		
		
		CityDAO cityDAO=new CityDAO();
		cityDAO.insert(cityVO);
		response.sendRedirect("admin/addCity.jsp");
		

		
	}

}
