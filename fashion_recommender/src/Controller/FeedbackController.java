package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ComplainDAO;
import DAO.FeedbackDAO;
import VO.ComplainVO;
import VO.FeedbackVO;
import VO.LoginVO;


@WebServlet("/FeedbackController")
public class FeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        public FeedbackController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String flag =request.getParameter("flag");
		
		if(flag.equals("Submit"))
		{
				insert(request,response);	
		}
	}


	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String feedback=request.getParameter("feedback");
		
	//	int loginId=Integer.parseInt(request.getParameter("loginId"));
		
	//	LoginVO loginVO=new LoginVO();
	//	loginVO.setLoginId(loginId);
		
		
		
		FeedbackVO feedbackVO=new FeedbackVO();
		feedbackVO.setFeedback(feedback);
	//	feedbackVO.setLoginVO(loginVO);
		feedbackVO.setStatus("Active");
		
		FeedbackDAO feedbackDAO=new FeedbackDAO();
		feedbackDAO.insert(feedbackVO);
		response.sendRedirect("user/addFeedback.jsp");

	}

}
