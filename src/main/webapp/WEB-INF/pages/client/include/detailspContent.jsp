<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" href="Frontend/css/detailsp.css">
</head>
	<script type="text/javascript">	  
	$(document).ready(function() { 
	  	var priceConvert = accounting.formatMoney(${sp.getDonGia()})+' VND';
		document.getElementById("priceConvert").innerHTML= priceConvert;
		  
	  });
	</script>
<body>
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="/carshop/img/${sp.getId()}.png" /></div>
						</div>		
					</div>
					<div class="details col-md-6">
						<p style="display:none" id="spid">${sp.getId()}</p>
						<h2 class="product-title">${sp.getTenSanPham()}</h2>
						<h4 class="price">Mô tả sản phẩm</h4>
						<c:if test = "${sp.getHopSo().length() > 0}">
							<p class="product-description">Hộp Số: ${sp.getHopSo()}</p>
						</c:if>
						<c:if test = "${sp.getSoKM().length() > 0}">
							<p class="product-description">Số KM Đã Đi: ${sp.getSoKM()}</p>
						</c:if>
						<c:if test = "${sp.getMauXe().length() > 0}">
						<p class="product-description">Màu Xe: ${sp.getMauXe()}</p>
						</c:if>
						<c:if test = "${sp.getKieuDang().length() > 0}">
							<p class="product-description">Kiểu Dáng: ${sp.getKieuDang()}</p>
						</c:if>
						<c:if test = "${sp.getXuatSu().length() > 0}">
							<p class="product-description">Xuất Xứ: ${sp.getXuatSu()}</p>
						</c:if>
						<c:if test = "${sp.getSoChoNgoi().length() > 0}">
							<p class="product-description">Số Chỗ Ngồi: ${sp.getSoChoNgoi()}</p>
						</c:if>
						<p class="product-description">Hãng sản xuất: ${sp.hangSanXuat.tenHangSanXuat}</p>
						<p class="product-description"><span class="important">THÔNG TIN CHUNG:</span> ${sp.getThongTinChung()}</p>
						<p class="product-description"><span class="important">BẢO HÀNH:</span> ${sp.getThongTinBaoHanh()}</p>
						<h4 class="price" id ="blabla">Giá bán: <span id="priceConvert"></span></h4>
						<div class="action">
							<button class="add-to-cart btn btn-warning" type="button">
							<span class="glyphicon glyphicon-shopping-cart pull-center"></span> Giỏ hàng</button>
						</div>
					</div>
				</div>
			 </div>
			  <!--Bình lua-->
				 <div id="fb-root"></div>
				 <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0" nonce="LLwC7U4q"></script>
				 <div class="fb-comments" data-href="http://127.0.0.1:5500/detailspContent.jsp" data-numposts="5" data-width=""></div>
			</div>
		</div>
	</div>
</body>

<script src="<c:url value='/js/client/detailspAjax.js'/>" ></script>	 