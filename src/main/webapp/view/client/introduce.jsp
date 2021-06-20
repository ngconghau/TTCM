<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  
  
  <section id="aa-catg-head-banner">
   <img src="${pageContext.request.contextPath}/view/client/assets/images/banner/banner-tc.jpg" alt="banner sản phẩm">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Giới thiệu</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>      
          <li style="color:#fff">Giới thiệu</li>   
        </ol>
      </div>
     </div>
   </div>
  </section>
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
      	<div>
      		<h1 style ="text-align: center; color: #f17501;">Giới thiệu</h1>
      		<p>Được thành lập từ năm 2020 đến nay <strong>BALOHIEU.COM</strong> đã trở thành địa điểm mua sắm lý tưởng của hàng trăm sao Việt và được hàng ngàn khách hàng tin yêu nhờ chất lượng sản phẩm nổi trội và dịch vụ hậu mãi tốt, giúp quyền lời của khách hàng luôn được đảm bảo</p><br>
      		<p>Với phương châm "Đặt khách hàng làm trung tâm trong mọi suy nghĩ và hành động của mình" cùng định hướng tiến tới trong tương lai, <strong>BALOHIEU</strong> luôn nỗ lực không ngừng để cung cấp cho khách hàng những sản phẩm chất lượng tốt nhất</p><br>
      		<h4><strong>Tầm nhìn</strong></h4>
      		<p	style="padding-left: 30px">Xây dựng <strong>BALOHIEU</strong> trở thành đơn vị hành lý số 1 tại Việt Nam</p>
      		<h4><strong>Sứ mệnh</strong></h4>
      		<ul style="padding-left: 30px">
      			<li>
      				<h5><strong>Đối với khách hàng:</strong><br>
      				<p>Tận tâm-trung thực</p>
      			</li>
      			<li>
      				<h5><strong>Đối với nhân viên:</strong><br>
      				<p>Giúp nhân viên yêu thương, đoàn kết nhau như một gia đình, tăng thêm thu nhập, tăng thêm kỹ năng sống.</p>
      			</li>
      			<li>
      				<h5><strong>Đối với xã hội:</strong><br>
      				<p>đóng góp cho sự phát triển kinh tế xã hội</p>
      			</li>
      		</ul>
      		<h4><strong>Giá trị</strong></h4>
      		<p>Kể từ khi thành lập <strong>BALOHIEU</strong> không ngừng lớn mạnh và liên tục phát triển không chỉ về quy mô mà còn hướng đến mục tiêu trở thành của hàng số 1 tại Việt Nam trong lĩnh vực hành lý, đem đến trải nghiệm và dịch vụ hoàn hảo nhất. Không chỉ có tầm nhìn xa, <strong>BALOHIEU</strong> còn luôn mong muốn tạo được nhưng điều kiện tối ưu nhất dành cho khách hàng của mình như sao:</p>
      		<ul style="padding-left: 30px">
      			<li>
      				<p><strong>Tư vấn và phục vụ khách hàng</strong> như phục vụ người thân trong gia đinh của mình</p>
      			</li>
      			<li>
      				<p><strong>Chủ động lắng nghe</strong> để hiểu nhu cầu và mối quan tâm của khách hàng.Tư vấn những sản phẩm và dịch vụ phù hợp nhất với nhu cầu sử dụng và khả năng tài chính của khách hàng</p>
      			</li>
      			<li>
      				<p><strong>Đặt khách hàng làm trung tâm</strong> trong mọi suy nghĩ và hành động của mình</p>
      			</li>
      		</ul>
      	</div>
      </div>
     </div>
    </section>
    
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
      