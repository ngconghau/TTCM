<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client/assets" var="url" />
<section id="aa-slider">
	<div class="aa-slider-area">
		<div id="sequence" class="seq">
			<div class="seq-screen">
				<ul class="seq-canvas">
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq src="${url}/images/banner/slide-balo-4.jpg" alt="Balo hiệu" />
						</div>				
					</li>
					<!-- single slide item -->
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq src="${url}/images/banner/banner-balo.jpg"
								alt="Women Jeans slide img" />
						</div>
					</li>						
				</ul>
			</div>
			<!-- slider navigation btn -->
			<fieldset class="seq-nav" aria-controls="sequence"
				aria-label="Slider buttons">
				<a type="button" class="seq-prev" aria-label="Previous"><span
					class="fa fa-angle-left"></span></a> <a type="button" class="seq-next"
					aria-label="Next"><span class="fa fa-angle-right"></span></a>
			</fieldset>
		</div>
	</div>
</section>
