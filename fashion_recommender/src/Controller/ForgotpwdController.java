package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CityDAO;
import DAO.LoginDAO;
import VO.CityVO;
import VO.LoginVO;

/**
 * Servlet implementation class ForgotpwdController
 */
@WebServlet("/ForgotpwdController")
public class ForgotpwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ForgotpwdController() {
        super();
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	int OTP;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String flag =request.getParameter("flag");	
		if (flag.equals("search")) {
			search(request, response);
		} 
	}



	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		String username = request.getParameter("username");
		LoginVO loginVO=new LoginVO();
		loginVO.setUsername(username);
		
		LoginDAO loginDAO=new LoginDAO();
		List ls=loginDAO.search(loginVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("pwdlist",ls);
		response.sendRedirect("admin/searchpwd.jsp");
		
	}

}
