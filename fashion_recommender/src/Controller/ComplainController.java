package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ComplainDAO;
import DAO.CountryDAO;
import VO.ComplainVO;
import VO.CountryVO;
import VO.LoginVO;


@WebServlet("/ComplainController")
public class ComplainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ComplainController() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String flag =request.getParameter("flag");
		
		if(flag.equals("View"))
		{
			dosearch(request,response);
		}
		
	}

	private void dosearch(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag =request.getParameter("flag");
			
		if(flag.equals("Submit"))
		{
				insert(request,response);	
		}
		
	
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
	//	int loginId=Integer.parseInt(request.getParameter("loginId"));
		
	//	LoginVO loginVO=new LoginVO();
	//	loginVO.setLoginId(loginId);
		
		String complainType=request.getParameter("complainType");
		String complainDescription=request.getParameter("complainDescription");
		
		
		ComplainVO complainVO=new ComplainVO();
		complainVO.setComplainType(complainType);
		complainVO.setComplainDescription(complainDescription);
	//	complainVO.setLoginVO(loginVO);
		complainVO.setStatus("Active");
		
		ComplainDAO complainDAO=new ComplainDAO();
		complainDAO.insert(complainVO);
		response.sendRedirect("user/addComplain.jsp");
		
	}

}
