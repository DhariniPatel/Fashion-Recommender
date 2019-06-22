package Filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import DAO.AddproductDAO;
import DAO.CartDetailDAO;
import DAO.ManagecategoryDAO;
import DAO.ManagesubcategoryDAO;
import DAO.RegisterDAO;
import DAO.UserproductDAO;
import VO.AddproductVO;
import VO.CartDetailVO;
import VO.LoginVO;
import VO.ManagecategoryVO;
import VO.ManagesubcategoryVO;
import VO.UserproductVO;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/*")
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		
		HttpSession session = ((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;
		String flag = request.getParameter("flag");
		
		String uri = ((HttpServletRequest) request).getRequestURI();

		System.out.println("<<<<<Before >>>>>>>"+uri);
		
		if(uri.contains("/addRegister.jsp")|| uri.contains("/userIndex.jsp")|| uri.contains("/ForgotpwdController")|| uri.contains("/searchpwd.jsp")|| uri.contains("/forgotpwd.jsp")|| uri.contains("/checkout.jsp")|| uri.contains("/product.jsp") ||uri.contains("/topdesc.jsp") ||uri.contains("/shoppingcart.jsp") ||uri.contains("/addComplain.jsp") ||uri.contains("/addFeedback.jsp") ||uri.contains("/css") ||uri.contains("/js") &&!uri.contains(".jsp") ||uri.contains("/img") ||uri.contains("/images") ||uri.contains("/Home.jsp") ||uri.contains("/fonts")||uri.contains("/addLogin.jsp"))
		{
			System.out.println("<<<<<After >>>>>>>"+uri);
			chain.doFilter(request, response);
		}
		else if (flag!= null && flag.equals("logout")){
			
			session.invalidate();
			requestDispatcher = request.getRequestDispatcher("/admin/addLogin.jsp");
			requestDispatcher.forward(request, response);
		}
		else if (flag!= null && flag.equals("login"))
		{
          String uname = request.getParameter("username");
          String pass = request.getParameter("password");
          
          System.out.println(uname+""+pass);
          
          LoginVO loginVO = new LoginVO();
          loginVO.setUsername(uname);
          loginVO.setPassword(pass);
          
          RegisterDAO registerDAO = new RegisterDAO(); 
          
			List list =  registerDAO.authentication(loginVO);
			
			if(list != null && list.size()>=1){
				
				//Iterator itr = list.iterator();
				
				//while(itr.hasNext()){
		        LoginVO user=(LoginVO) list.get(0);
				
				int y = user.getLoginId();
				session.setAttribute("userID",y);
				
			//	System.out.println(user.getRadio());
			//	System.out.println(session.getAttribute("userId"));
				String type = user.getUserType();
				session.setAttribute("userType",type);
				System.out.println(y);
				if(type.equalsIgnoreCase("admin"))
				{
					requestDispatcher = request.getRequestDispatcher("/admin/index.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("user"))
				{
					
					ManagecategoryDAO managecategoryDAO = new ManagecategoryDAO();
					ManagecategoryVO managecategoryVO = new ManagecategoryVO();
					List<ManagecategoryVO> catList = managecategoryDAO.search(managecategoryVO);
					
					System.out.println("<<<<<CATLIST>>>> : " + catList.size());
					
					ManagesubcategoryVO managesubcategoryVO = new ManagesubcategoryVO();
					ManagesubcategoryDAO managesubcategoryDAO = new ManagesubcategoryDAO();
					List<ManagesubcategoryVO> subList = managesubcategoryDAO.search(managesubcategoryVO);
					
					UserproductVO userproductVO=new UserproductVO();
				
					UserproductDAO userproductDAO=new UserproductDAO();
					List<UserproductVO> productList=userproductDAO.search(managesubcategoryVO);
					
					HttpSession session1=((HttpServletRequest) request).getSession();
					session.setAttribute("productlist",productList);
					
					System.out.println("<<<<<SUBLIST>>>>> : " + subList.size());
					
					AddproductVO addproductVO=new AddproductVO();
		
					AddproductDAO addproductDAO=new AddproductDAO();
					List ls=addproductDAO.update(addproductVO);
					
					HttpSession session2=((HttpServletRequest) request).getSession();
					
					System.out.println("List Size>>>>>>>"+ls.size());
					session.setAttribute("productlist",ls);
					
					CartDetailVO cartDetailVO = new CartDetailVO();
					
				//	List ls=new ArrayList();
					HttpSession session3=((HttpServletRequest) request).getSession();
					session.setAttribute("loginList", ls);
				
				
					
					Map<String , Object> map = new HashMap<>();
					
					for(ManagecategoryVO catVO : catList){
						List<ManagesubcategoryVO> temp = new ArrayList<ManagesubcategoryVO>();
						
						for (ManagesubcategoryVO managesubcategoryVO2 : subList) {
							
							if(catVO.getCategoryId() == managesubcategoryVO2.getManagecategoryVO().getCategoryId()){
								
								temp.add(managesubcategoryVO2);
								System.out.println("------->> "  + temp);
							}
						}
						map.put(catVO.getCategoryName(),temp);
					}
					
					session.setAttribute("map1", map);					
					
					requestDispatcher = request.getRequestDispatcher("/user/userIndex.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("company"))
				{
					requestDispatcher = request.getRequestDispatcher("/company/companyIndex.jsp");  
					requestDispatcher.forward(request,response);
				}
				else
				{
					requestDispatcher = request.getRequestDispatcher("/admin/addLogin.jsp");  
					requestDispatcher.forward(request,response);  
				}
			}
			else
			{
				requestDispatcher = request.getRequestDispatcher("/admin/addLogin.jsp");
				requestDispatcher.forward(request,response);  		
			}	
		}
		else if(session.getAttribute("userID") != null)
		{
			String h = (String)session.getAttribute("userType");
			//System.out.println("type = = = " + h);
			
			if(h!=null && h.equals("admin")){
				
			//System.out.println("chain");
			chain.doFilter(request,response);
			}
			
			else if(h!=null && h.equals("user"))
			{
				//System.out.println("chain");
				chain.doFilter(request, response);
			}
			else if(h!=null && h.equals("company"))
			{
				//System.out.println("chain");
				chain.doFilter(request, response);
			}
			
			
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("/admin/addLogin.jsp");  
				rd.forward(request,response);
			}
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("/admin/userIndex.jsp");  
			rd.forward(request,response);  
			
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
