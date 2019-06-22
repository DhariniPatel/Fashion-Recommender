<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="left">
            <div class="media user-media bg-dark dker">
                <div class="user-media-toggleHover">
                    <span class="fa fa-user"></span>
                </div>
                <div class="user-wrapper bg-dark">
                    <a class="user-link" href="">
                        <img class="media-object img-thumbnail user-img rounded-circle admin_img3" alt="User Picture"
                             src="img/admin.jpg">
                        <p class="text-white user-info"> Welcome </p>
                    </a>
                    <div class="search_bar col-lg-12">
                        <div class="input-group">
                            <input type="search" class="form-control" placeholder="search">
                            <span class="input-group-btn">
<button class="btn without_border" type="button"><span class="fa fa-search">
</span></button>
</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #menu -->
            <ul id="menu" class="bg-blue dker">
                <li class="active">
                    <a href="index.jsp">
                        <i class="fa fa-home"></i>
                        <span class="link-title">&nbsp;Dashboard</span>
                    </a>
                </li>
                
                
                
                
                
                
                
                
                
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Manage Category</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="addManagecategory.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; addCategory
                            </a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath() %>/ManagecategoryController?flag=View">
                                <i class="fa fa-angle-right"></i> &nbsp; searchCategory
                            </a>
                        </li>
                        
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Manage SubCategory </span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="<%=request.getContextPath()%>/ManagesubcategoryController?flag=loadCategory">
                                <i class="fa fa-angle-right"></i> &nbsp; addSubCategory
                            </a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/ManagesubcategoryController?flag=search">
                                <i class="fa fa-angle-right"></i> &nbsp; searchSubCategory
                            </a>
                        </li>
                        
                    </ul>
                </li>
               <!--   <li>
                     <a href="javascript:;">
                        <i class="fa fa-th-large"></i>
                        <span class="link-title">&nbsp; Manage Product</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="manageProduct.jsp">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; addManageProduct
                            </a>
                        </li>
                        <li>
                            <a href="manageProduct_table.jsp">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; SearchManageProduct
                            </a>
                        </li>
                    </ul>
                </li>-->
                
              <!--   <li>
               
                    <a href="javascript:;">
                        <i class="fa fa-th-large"></i>
                        <span class="link-title">&nbsp; Add Product</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="<%=request.getContextPath() %>/AddproductController?flag=loadCategory">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; addProduct
                            </a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath() %>/AddproductController?flag=search">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; SearchProduct
                            </a>
                        </li>
                    </ul>
                </li>  -->
                              
                                         
                <li>
               
                    <a href="javascript:;">
                        <i class="fa fa-th-large"></i>
                        <span class="link-title">&nbsp; Country </span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="Country.jsp">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; addCountry
                            </a>
                        </li>
                        
                         <li>
                            <a href="<%=request.getContextPath() %>/CountryController?flag=View">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; SearchCountry
                            </a>
                        </li>
                    </ul>
                </li>
                
                <li>
               
                    <a href="javascript:;">
                        <i class="fa fa-th-large"></i>
                        <span class="link-title">&nbsp; State </span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="<%=request.getContextPath() %>/StateController?flag=loadCountry">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; addState
                            </a>
                        </li>
                         <li>
                            <a href="<%=request.getContextPath() %>/StateController?flag=search">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; SearchState
                            </a>
                        </li>
                        
                    </ul>
                </li>
                
                <li>
               
                    <a href="javascript:;">
                        <i class="fa fa-th-large"></i>
                        <span class="link-title">&nbsp; City </span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="<%=request.getContextPath() %>/CityController?flag=loadCountry">
                            
                                <i class="fa fa-angle-right"></i>
                                &nbsp; addCity
                            </a>
                        </li>
                        
                         <li>
                            <a href="<%=request.getContextPath() %>/CityController?flag=search">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; SearchCity
                            </a>
                        </li>
                    </ul>
                </li>  
                
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-pencil"></i>
                        <span class="link-title">&nbsp; Manage Complain</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="ManageComplain_table.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; Manage Complain
                            </a>
                        </li>
               		</ul>
                </li>   
                
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-pencil"></i>
                        <span class="link-title">&nbsp; Manage Feedback</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                  	   <li>
                            <a href="ManageFeedback_table.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; Manage Feedback
                            </a>
                        </li>
                        
                        
                    </ul>
                </li>         
                               
            </ul>
            <!-- /#menu -->
        </div>