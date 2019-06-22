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
import DAO.StateDAO;
import VO.CountryVO;
import VO.StateVO;

@WebServlet("/StateController")
public class StateController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
       public StateController()
    {
        super();
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag =request.getParameter("flag");

		if(flag.equals("loadCountry"))
		{
			loadCountry(request,response);
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
		int stateId=Integer.parseInt(request.getParameter("stateId"));
		
		StateVO stateVO=new StateVO();
		stateVO.setStateId(stateId);
		
		StateDAO stateDAO=new StateDAO();
		List ls=stateDAO.update(stateVO);
		
		List cList=stateDAO.loadCountry(stateVO);
		
		HttpSession session=request.getSession();
		
		
		session.setAttribute("clist",cList);
		
		session.setAttribute("statelist",ls);
		
		System.out.println("Countrylist>>>>>>"+cList.size());
		System.out.println("statelist>>>>>>"+ls.size());
		
		response.sendRedirect("admin/searchStateUpdate.jsp");
		
		
		
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		int stateId=Integer.parseInt(request.getParameter("stateId"));
		String stateName=request.getParameter("stateName");
		String stateDescription=request.getParameter("stateDescription");
		String deleteStatus=request.getParameter("deleteStatus");
		
		StateVO stateVO=new StateVO();
		stateVO.setStateId(stateId);
		stateVO.setDeleteStatus("Deactivate");
		StateDAO stateDAO=new StateDAO();
		stateDAO.delete(stateVO);
		
		dosearch(request,response);
		
	}

	private void dosearch(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		StateVO stateVO=new StateVO();
		
		StateDAO stateDAO=new StateDAO();
		List stateList=stateDAO.search(stateVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("statelist",stateList);
		response.sendRedirect("admin/searchState.jsp");
	}

	private void loadCountry(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		StateVO stateVO=new StateVO();
		
		StateDAO stateDAO=new StateDAO();
		List stateList=stateDAO.loadCountry(stateVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("statelist",stateList);
		response.sendRedirect("admin/addState.jsp");
		
		
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
		int stateId=Integer.parseInt(request.getParameter("id"));
//		System.out.println("after");
		int countryId=Integer.parseInt(request.getParameter("countryId"));
//		System.out.println(countryId);
		CountryVO countryVO = new CountryVO();
		countryVO.setCountryId(countryId);
		
		String stateName=request.getParameter("stateName");
		String stateDescription=request.getParameter("stateDescription");
		
		StateVO stateVO=new StateVO();
		stateVO.setStateId(stateId)	;
		stateVO.setStateName(stateName);
		stateVO.setStateDescription(stateDescription);
		stateVO.setDeleteStatus("Active");
		stateVO.setCountryVO(countryVO);
		StateDAO stateDAO=new StateDAO();
		stateDAO.finalupdate(stateVO);
		
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		int countryId=Integer.parseInt(request.getParameter("countryId"));
		
		CountryVO countryVO=new CountryVO();
		countryVO.setCountryId(countryId);
		
		String stateName=request.getParameter("stateName");
		String stateDescription=request.getParameter("stateDescription");
		
		StateVO stateVO=new StateVO();
		stateVO.setStateName(stateName);
		stateVO.setStateDescription(stateDescription);
		stateVO.setDeleteStatus("Active");
		stateVO.setCountryVO(countryVO);
		
		
		StateDAO stateDAO=new StateDAO();
		stateDAO.insert(stateVO);
		response.sendRedirect("admin/addState.jsp");
		
	}

}
