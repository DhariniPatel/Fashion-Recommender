package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AddproductDAO;
import DAO.UserproductDAO;
import VO.AddproductVO;
import VO.ManagesubcategoryVO;
import VO.UserproductVO;


@WebServlet("/UserproductController")
public class UserproductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UserproductController() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String flag =request.getParameter("flag");
		if(flag.equals("search"))
		{
			dosearch(request,response);
		}
	}


	private void dosearch(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int subcategoryId = Integer.parseInt(request.getParameter("subcategoryId"));
		
		ManagesubcategoryVO managesubcategoryVO = new ManagesubcategoryVO();
		managesubcategoryVO.setSubcategoryId(subcategoryId);
		
		UserproductDAO userproductDAO=new UserproductDAO();
		List productList=userproductDAO.search(managesubcategoryVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("productlist",productList);
		response.sendRedirect("user/product.jsp");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
