<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client/assets" var="url" />
<section id="menu">
	<div class="container">
		<div class="menu-area">
			<!-- Navbar -->
			<div class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<!-- Left nav -->
					<ul class="nav navbar-nav">
						<li><a href="${pageContext.request.contextPath}/">TRANG CHỦ</a></li>
						<li><a href="${pageContext.request.contextPath}/view/client/introduce">GIỚI THIỆU</a></li>
						<li class="dropdown">
							<a href="${pageContext.request.contextPath}/view/client/product" >SẢN PHẨM</a>
<!-- 							class="dropdown-toggle" data-toggle="dropdown"<b class="caret"></b> -->
<!-- 							<ul class="dropdown-menu"> -->
<%-- 								<li><a href="${pageContext.request.contextPath}/view/client/product">RAU CỦ QUẢ</a></li> --%>
<!-- 								<li><a href="product.jsp">CÁC LOẠI HẠT</a></li> -->
<!-- 								<li><a href="product.jsp">TINH DẦU</a></li> -->
<!-- 								<li><a href="product.jsp">MẬT ONG</a></li> -->
<!-- 							</ul> -->
						</li>
<%-- 						<li><a href="${pageContext.request.contextPath}/view/client/news-list">TIN TỨC</a></li> --%>
						<li><a href="${pageContext.request.contextPath}/view/client/security">CHÍNH SÁCH</a></li>
<%-- 						<li><a href="${pageContext.request.contextPath}/view/client/contact">LIÊN HỆ</a></li> --%>
							<!-- search box --> 
						<li class="aa-search">
							<a class="aa-search-box">
							<form action="${pageContext.request.contextPath}/view/client/product/search" method="GET">
									<input type="text" name="s" id="" placeholder="Tìm kiếm sản phẩm..">
									<button class="serach-box"><span class="fa fa-search"></span></button>
							</form></a> 
						</li>
						</li>
						<!-- / search box -->
					</ul>
				</div>
				<!--/.nav-collapse -->

			</div>
		</div>
	</div>
</section>
