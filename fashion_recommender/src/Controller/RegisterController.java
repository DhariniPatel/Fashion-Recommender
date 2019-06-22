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

import DAO.CountryDAO;
import DAO.LoginDAO;
import DAO.RegisterDAO;
import VO.CountryVO;
import VO.LoginVO;
import VO.RegisterVO;


@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegisterController() {
        super();
     
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String flag =request.getParameter("flag");
		
		if(flag.equals("insertDetails"))
		{
			insertDetails(request,response);	
		}
	}


	private void insertDetails(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		LoginVO loginVO=new LoginVO();
		loginVO.setUsername(username);
		loginVO.setPassword(password);
		loginVO.setUserType("user");
		
		RegisterVO registerVO=new RegisterVO();
		registerVO.setFirstname(firstname);
		registerVO.setLastname(lastname);
		registerVO.setUsername(username);
		registerVO.setPassword(password);
		registerVO.setLoginVO(loginVO);
		
		LoginDAO loginDAO=new LoginDAO();
		loginDAO.insert(loginVO);
		
		RegisterDAO registerDAO=new RegisterDAO();
		registerDAO.insert(registerVO);
	
		List ls=new ArrayList();
		HttpSession session=request.getSession();
		session.setAttribute("loginList", ls);
		
		response.sendRedirect("admin/addLogin.jsp");	
	}
}
