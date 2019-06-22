package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CartDetailDAO;
import DAO.CartMasterDAO;
import DAO.CheckoutDAO;
import DAO.StateDAO;
import VO.AddproductVO;
import VO.CartDetailVO;
import VO.CartMasterVO;
import VO.CheckoutVO;
import VO.CountryVO;
import VO.LoginVO;
import VO.StateVO;

@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CartController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String flag = request.getParameter("flag");
		if (flag.equals("searchCart")) {
			searchCart(request, response);
		}
		
		if (flag.equals("deleteProduct")) {
			deleteProduct(request, response);
		}

	}

	private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		CartDetailVO cartDetailVO = new CartDetailVO();
		cartDetailVO.setCartId(id);
		CartDetailDAO cartDetailDAO = new CartDetailDAO();
		cartDetailDAO.deteleProduct(cartDetailVO);
		searchCart(request, response);
		
	}

	private void searchCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		int userId = (int) request.getSession().getAttribute("userID");

		System.out.println(userId);
		
		LoginVO loginVO = new LoginVO();
		loginVO.setLoginId(userId);


		CartDetailDAO cartDetailDAO = new CartDetailDAO();
		List ls = cartDetailDAO.SearchCart(loginVO);

		HttpSession session = request.getSession();
		session.setAttribute("cartlist", ls);
		session.setAttribute("cartSize", ls.size());
		System.out.println("List Size>>>>>>>>>>>>>>>>>>>>>>" + ls.size());

		response.sendRedirect("user/shoppingcart.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String flag = request.getParameter("flag");
		if (flag.equals("insert")) {

			insert(request, response);
		}
		if (flag.equals("submit")) {

			submit(request, response);
		}

	
	}

	private void submit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//int checkoutId=Integer.parseInt(request.getParameter("checkoutId"));
		
		int loginId = (int) request.getSession().getAttribute("userID");
		
		LoginVO loginVO=new LoginVO();
		loginVO.setLoginId(loginId);
		
		String gTotal=request.getParameter("GrandTotal");
		System.out.println("gTotal>>>>>>>>>>>>>>>>>"+gTotal);
		HttpSession session = request.getSession();
		session.setAttribute("grandTotal", gTotal);
		
		
		String username=request.getParameter("username");
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String address=request.getParameter("address");
		String postcode=request.getParameter("postcode");
		
		CheckoutVO checkoutVO=new CheckoutVO();
		checkoutVO.setUsername(username);
		checkoutVO.setFirstname(firstname);
		checkoutVO.setLastname(lastname);
		checkoutVO.setAddress(address);
		checkoutVO.setPostcode(postcode);
		checkoutVO.setLoginVO(loginVO);
		
		
		CheckoutDAO checkoutDAO=new CheckoutDAO();
		checkoutDAO.submit(checkoutVO);
		response.sendRedirect("user/as.jsp");
	
	
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int productId = Integer.parseInt(request.getParameter("productId"));
		String price = request.getParameter("price");

		AddproductVO addproductVO = new AddproductVO();
		addproductVO.setProductId(productId);

		int loginId = (int) request.getSession().getAttribute("userID");

		LoginVO loginVO = new LoginVO();
		loginVO.setLoginId(loginId);
		
		CartMasterVO cartMasterVO1 = new CartMasterVO();
		CartMasterDAO cartMasterDAO1 = new CartMasterDAO();
		cartMasterVO1.setLoginVO(loginVO);
		List<CartMasterVO> ls = cartMasterDAO1.searchById(cartMasterVO1);
		
		if(ls != null && ls.size() == 0){
			CartMasterVO cartMasterVO = new CartMasterVO();
			cartMasterVO.setDeleteStatus("active");
			cartMasterVO.setLoginVO(loginVO);
			cartMasterVO.setTotalPrice("");
			CartMasterDAO cartMasterDAO = new CartMasterDAO();
			cartMasterDAO.insert(cartMasterVO);
	
			CartDetailVO cartDetailVO = new CartDetailVO();
			cartDetailVO.setAddproductVO(addproductVO);
			cartDetailVO.setCartMasterVO(cartMasterVO);
			cartDetailVO.setDeleteStatus("active");
			cartDetailVO.setLoginVO(loginVO);
			cartDetailVO.setProductPrice(price);
	
			CartDetailDAO cartDetailDAO = new CartDetailDAO();
			cartDetailDAO.insert(cartDetailVO);
		}else{
			CartMasterVO cartMasterVO = new CartMasterVO();
			cartMasterVO.setCartMasterId(ls.get(0).getCartMasterId());
			CartDetailVO cartDetailVO = new CartDetailVO();
			cartDetailVO.setAddproductVO(addproductVO);
			cartDetailVO.setCartMasterVO(cartMasterVO);
			cartDetailVO.setDeleteStatus("active");
			cartDetailVO.setLoginVO(loginVO);
			cartDetailVO.setProductPrice(price);

			CartDetailDAO cartDetailDAO = new CartDetailDAO();
			cartDetailDAO.insert(cartDetailVO);
		}
		
		response.sendRedirect("user/topdesc.jsp");

	}

}
