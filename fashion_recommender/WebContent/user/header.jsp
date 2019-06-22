<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="header-wrapper">
	<header id="header" class="header-design8">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-md-4 col-lg-4 col-xl-5">
					<a href="/"><img class="logo img-responsive"
						src="img/logo.png?2345074269622664181" alt="logo" /></a>
				</div>
				<div class="col-sm-8 col-md-8 col-lg-8 col-xl-7 text-right">
					<div class="settings">
						<div class="account-row-list mobile-menu-off"
							style="display: inline-block;">
							<ul>
								<li><a href="/account"><span class="icon icon-person"></span>Account</a></li>
								<li><a href="<%=request.getContextPath()%>/CartController?flag=searchCart"><span
										class="icon icon-favorite"></span>Cart</a></li>
								<li><a href="/checkout"><span
										class="icon icon-done_all"></span>Checkout</a></li>

								<!-- <li><a
									href="<%=request.getContextPath()%>/admin/addLogin.jsp"><span
										class="icon icon-lock"></span>Sign In</a></li>
								<li><a
									href="<%=request.getContextPath()%>/admin/addRegister.jsp"><span
										class="icon icon-person_add"></span>Register</a></li> -->
				
								 <a class="dropdown-item" href="?flag=logout"><i class="fa fa-sign-out"></i>
                                    Log Out</a>

							</ul>
						</div>

						<!-- currency start -->
												<!-- currency end -->



						<!-- shopping cart start -->
						<!--  <div class="cart link-inline header-cart mobile-menu-off">
							<div class="dropdown text-right">
								<a class="dropdown-toggle" style="cursor: default;"> <span
									class="icon icon-shopping_basket"></span> <span
									class="badge badge--cart bigcounter">0</span>
								</a>
								<div
									class="dropdown-menu dropdown-menu--xs-full slide-from-top cart-group-1"
									role="menu">
									<div class="container">

										<div class="cart__top">Recently added item(s)</div>
										<a href="#" class="icon icon-close cart__close"><span>close</span></a>
										<ul></ul>
										<div class="cart__bottom">
											<a href="/checkout" class="btn btn--ys btn-checkout">Checkout
												<span class="icon icon--flippedX icon-reply"></span>
											</a>
											<div class="cart__total">
												Cart subtotal: <span class="shopping-cart__total"> <span
													class=money>$0.00</span></span>
											</div>
											<a href="/cart" class="btn btn--ys"><span
												class="icon icon-shopping_basket"></span>View Cart</a>
										</div>

									</div>
								</div>
							</div>
						</div>-->
						<!-- shopping cart end -->

					</div>
				</div>
			</div>
		</div>
		<div class="container showscreen1024">
			<div class="row text-center">
				<div class="text-right extra-right">
					<!-- account menu start -->
					<div class="account link-inline ">
						<div class="dropdown text-right">
							<a class="dropdown-toggle" data-toggle="dropdown"> <span
								class="icon icon-person "></span>
							</a>
							<ul class="dropdown-menu dropdown-menu--xs-full">
								<li><a href="/account"><span class="icon icon-person"></span>Account</a></li>
								<li><a href="/pages/wishlist"><span
										class="icon icon-favorite"></span>Wishlist</a></li>

								<li><a href="/checkout"><span
										class="icon icon-done_all"></span>Checkout</a></li>


								<li><a href="/account/login"><span
										class="icon icon-lock"></span>Sign In</a></li>
								<li><a href="/account/register"><span
										class="icon icon-person_add"></span>Register</a></li>



								<li class="dropdown-menu__close"><a href="#"><span
										class="icon icon-close"></span>close</a></li>
							</ul>
						</div>
					</div>
					<!-- account menu end -->
				</div>
			</div>
		</div>
		<div class="stuck-nav">
			<div class="container offset-top-5">
				<div class="row">
					<div class="pull-left col-sm-10 col-md-10 col-lg-10">
















						<nav class="navbar ">
							<div class="responsive-menu mainMenu">

								<div class="col-xs-2 visible-mobile-menu-on">
									<div class="expand-nav compact-hidden">
										<a href="#off-canvas-menu" id="off-canvas-menu-toggle">
											<div class="navbar-toggle">
												<span class="icon-bar"></span> <span class="icon-bar"></span>
												<span class="icon-bar"></span> <span class="menu-text">MENU</span>
											</div>
										</a>
									</div>
								</div>

								<ul class="nav navbar-nav">
									<li class="dl-close"></li>
									<li class="dropdown dropdown-mega-menu dropdown-one-col">
										<a href="userIndex.jsp" class="dropdown-toggle"
										data-toggle="dropdown"><span class="act-underline">
												Home</span> </a>
										</li>		
												 <c:forEach items="${sessionScope.map1}" var="j">
											<li class="dropdown dropdown-mega-menu dropdown-one-col">
												<a href="userIndex.jsp" class="dropdown-toggle"
												data-toggle="dropdown"><span class="act-underline">
														${j.key}</span> </a>
												<ul class="dropdown-menu multicolumn one-col" role="menu">

													
													<c:forEach items="${j.value}" var="p">
														<li class="col-sm-3"><span class="name"><a href="<%=request.getContextPath()%>/UserproductController?flag=search&subcategoryId=${p.subcategoryId}"
															class="megamenu__subtitle"> ${p.subcategoryName}
															
															
														</a>
														
														
														</span>
															<br>
															<!--<ul class="megamenu__submenu">
																
																  <li class="level2"><a
																	href="/collections/women-s/outerwear">${p.subcategoryName}</a></li>
															</ul>--></li>
															
															</c:forEach>
															
												</ul>
											</li>
										</c:forEach>
									
									<li class="dropdown dropdown-mega-menu dropdown-one-col">
										<a href="addComplain.jsp" class="dropdown-toggle"
										data-toggle="dropdown"><span class="act-underline">
												Complain</span> </a>
									</li>
										
									<li class="dropdown dropdown-mega-menu dropdown-one-col">
										<a href="addFeedback.jsp" class="dropdown-toggle"
										data-toggle="dropdown"><span class="act-underline">
												Feedback</span> </a>
									</li>
									
											
										
									<li class="dropdown dropdown-mega-menu"><a
										href="/collections/women-s" class="dropdown-toggle"
										data-toggle="dropdown"><span class="act-underline">
										</span> </a> <!--     <ul class="dropdown-menu megamenu" role="menu">
          
          <li class="col-sm-3">
            <a href="/collections/women-s" class="megamenu__subtitle">
              <span>WOMEN</span>
              
            </a>
            
         
              <ul class="megamenu__submenu">
                
                <c:forEach items="${sessionScope.categorylist}" var="i">
                <li class="level2"><a href="/collections/women-s/blouses-shirts">
                
                	
				
					
						${i.categoryName}						
												
							
                	
                
                
                
                </a>
                  
                  </c:forEach>
       
                </li>
                
                                <li class="level2"><a href="/collections/women-s/outerwear">Dresses</a>
                  
                  
                  
                  
               
                 
                </li>
                
                
              </ul>
              
              --></li>




								</ul>


								








							

							</div>
						</nav>
					</div>
					<div class="pull-right col-sm-2 col-md-2 col-lg-2">
						<div class="text-right">
							<!-- search start -->
							<div class="search link-inline ">
								<a href="#" class="search__open"><span
									class="icon icon-search"></span></a>
								<div class="search-dropdown">
									<form action="/search" method="get">
										<div class="input-outer">
											<input type="hidden" name="type" value="product" /> <input
												type="text" name="q" class="search_field" value=""
												maxlength="128" placeholder="SEARCH:">
											<button type="submit" title="" class="icon icon-search"></button>
										</div>
										<a href="#" class="search__close"><span
											class="icon icon-close"></span></a>
									</form>
								</div>
							</div>
							<!-- search end -->


							<!-- shopping cart start -->
							<div class="cart link-inline header-cart">
								<div class="dropdown text-right">
									<a class="dropdown-toggle" style="cursor: default;"> <span
										class="icon icon-shopping_basket"></span> <span
										class="badge badge--cart bigcounter">0</span>
									</a>
									<div
										class="dropdown-menu dropdown-menu--xs-full slide-from-top cart-group-1"
										role="menu">
										<div class="container">

											<div class="cart__top">Recently added item(s)</div>
											<a href="#" class="icon icon-close cart__close"><span>close</span></a>
											<ul></ul>
											<div class="cart__bottom">
												<a href="/checkout" class="btn btn--ys btn-checkout">Checkout
													<span class="icon icon--flippedX icon-reply"></span>
												</a>
												<div class="cart__total">
													Cart subtotal: <span class="shopping-cart__total"> <span
														class=money>$0.00</span></span>
												</div>
												<a href="/cart" class="btn btn--ys"><span
													class="icon icon-shopping_basket"></span>View Cart</a>
											</div>

										</div>
									</div>
								</div>
							</div>
							<!-- shopping cart end -->

						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
</div>