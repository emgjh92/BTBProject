<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function frm_submit(){

	var frm = document.getElementById("frm"); 

	
	/*
	var reg = /^[가-힣a-zA-Z0-9\s]+$/; //한글+영문(대소문자)+숫자 +공백 정규표현식

	var product_name = document.getElementById("product_name"); 
	// HTML 내에서 id 가 branch_name인 것을 가져온다. (가져온 후 var branch_name 에 넣어준다.)

	if(!(reg.test(product_name.value)) || (product_name.value.length) <= 2){ 
		alert("유효한 이름값을 넣어주세요.");
		return; //값을 DB로 전달하지 않고 return
	}//제품명 검사
	*/
	
	var reg = /^[0-9]*$/;
	//숫자만 정규식
	
	var product_price = document.getElementById("product_price");

	
	if(!reg.test(product_price.value) || (product_price.value.length) <= 2 || (product_price.value.length) > 13){ 
		alert("유효한 가격 값을 입력해 주세요.");
		return; //값을 DB로 전달하지 않고 return
	}
	//product_price 값의 유효성 검사
	
	/*	
	var reg = /^[가-힣a-zA-Z\s]+$/; //한글+영문 +공백 정규표현식	
	

	var exampleFormControlTextarea1 = document.getElementById("exampleFormControlTextarea1").value;
	// HTML 내에서 id 가 exampleFormControlTextarea1인 것을 가져온다. (가져온 후 var exampleFormControlTextarea1 에 넣어준다.)

	
	if(!reg.test(exampleFormControlTextarea1.value) || (exampleFormControlTextarea1.value.length) <= 2){ 
		alert("유효한 설명 값을 넣어주세요.");
		return; //값을 DB로 전달하지 않고 return
	}
	*/
	/*
	var fileext = document.getElementById("exampleFormControlFile1").value;
	fileext = fileext.slice(fileext.indexOf(".") + 1).toLowerCase(); //파일 확장자를 잘라내고, 비교를 위해 소문자로 만듭니다.


	if(fileext != "jpg" && fileext != "png" &&  fileext != "gif" &&  fileext != "bmp"){ 
		alert("이미지 파일(jpg, png, gif, bmp)만 등록 가능합니다.");
		return; //값을 DB로 전달하지 않고 return
	}
	
*/
	frm.submit(); //값을 DB로 전달
}
</script>
<meta charset="UTF-8">
<title>page</title>
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
   integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
   crossorigin="anonymous">

</head>

<body>
   <jsp:include page="../commons/global_nav.jsp"></jsp:include>
   <jsp:include page="../commons/management_nav.jsp"></jsp:include>

   <div class="container-fluid">
      <!-- 메인 기능들이 나오는 row -->
      <div class="row">
         <div class="col-1" style="background-color: #f9f9fa"></div>

         <!--  사이드바 시작  -->
         <div class="col-2"
            style="padding: 0; border-right: 2px solid #e8ecf1;">
            <ul class="list-group list-group-flush">
               <!--  수정할 부분 시작 -->
               <li class="list-group-item" style="height: 105px; background-color: #7393a7; color:white; font-weight:bold;"><h2 class="mt-3" align="center">상품관리</h2></li>
               <li class="list-group-item"><h5><a style="color: #6c737e;" href="${pageContext.request.contextPath }/management/product_view.do">상품조회</a></h5></li>
               <li class="list-group-item"><h5><a style="color: #6c737e;" href="${pageContext.request.contextPath }/management/product_add.do">상품등록</a></h5></li>

               
               <!--  수정할 부분 끝 -->
            </ul>
         </div>
         <!--  사이드바 끝   -->

      
        <!--  메인 기능 나오는 곳 -->
        <div class="col pl-5 pr-5">
        <!--메인기능 내용시작-->
        <div class="row">
            <!--메인기능 메인col-->
            <div class="col" style="background-color:white">
                <!--1. 타이틀, 네비게이터 시작-->
                <div class="row mt-3">
                    <!--타이틀-->
                    <div class="col-4 mt-3" ><span style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; color: rgb(46, 46, 46); font-weight:bold; font-size: 36px;">상품 조회</span></div>
                    <div class="col"></div>
                    <!---네비게이터-->
                    <div class="col-6">
                        <div class="row">                                   
                            <div class="col"></div>      
                        </div>
                        <div class="row"> 
                            <div class="col-2"></div> 
                            <div class="col mt-5" style="display:inline;">     
                                <ul style="list-style:none; margin-top: 10px; margin-bottom: 5px; margin-left: 100px; text-decoration-color: gray">
                                    <li>
                                        <a style="color: gray; font-size: 14px" href="#">상품관리</a>
                                        >
                                        <a style="color: gray; font-size: 14px" href="${pageContext.request.contextPath }/management/product_view.do">상품조회</a>
                                       
                                    </li>
                                </ul>             
                            </div>      
                        </div>
                    </div>
                </div>
                <!--1. 타이틀, 네비게이터 끝-->

                <!--2. 메인기능 알맹이들!!!!! 여기에 넣기-->
                <!--2. 메인기능 알맹이들!!!!! 여기에 넣기-->
                <!--2. 메인기능 알맹이들!!!!! 여기에 넣기-->
                <!--2. 메인기능 알맹이들!!!!! 여기에 넣기-->
<div class="container">


<div class="mt-5"></div>
<h2 class="ml-3">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BT전자 상품 리스트</h2>

<c:if test="${!empty sessionUser && sessionUser.deptTypeVo.dept_type_no==1}">
<div class="row mt-5 mx-5 mp-5 px-5">		<!-- 테이블(게시글 보이기) -->
				<div class="col">	<!-- 게시판 - 테이블 스키마 -->
					<table class="table table-hover shadow-sm p-3 mb-5 bg-white rounded">
						<thead class="shadow-none p-3 mb-5 bg-light rounded">
						<tr style="text-align:center">
							<th>번호</th><th>제품유형</th><th>제품명</th><th>가격</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="xxxx" items="${dataList }" varStatus="tttt">
							<tr style="text-align:center">
								<th scope="row">${tttt.index+1}</th>
								<td>${xxxx.productTypeVo.product_type_name }</td>
								<td><a href="${pageContext.request.contextPath }/management/read_product_page.do?product_no=${xxxx.productVo.product_no}">${xxxx.productVo.product_name }</a></td>
								<td>${xxxx.productVo.product_price } 원</td>
							</tr>
						</c:forEach>
					</tbody>
					</table>
				</div>
			</div>
			<!--  -->
			<div class="row"> <!-- 버튼들... -->
				<div class="col"></div>
				<div class="col"> <!-- 페이지 버튼 -->
					<div class="row d-inline-flex mx-5	">
					<div class="col d-inline-flex">
					
					<nav aria-label="Page navigation example" class="d-inline-flex">
					   <ul class="pagination d-inline-flex">
					  
					    <li class="page-item<c:if test="${beginPage-1 <= 0}"> active</c:if>">
					    <a class="page-link" href="./product_view.do?curr_page=${beginPage-1 }">이전</a></li>
					  	<c:forEach begin="${beginPage }" end="${endPage }" var="i">
					  		<li class="page-item<c:if test="${curr_page==i}"> active</c:if>">
					  		<a class="page-link" href="./product_view.do?curr_page=${i}">${i}</a></li>
					  	</c:forEach>
					    <li class="page-item<c:if test="${endPage+1 >= (totalCount-1)/10+1 }"> active</c:if>">
					    <a class="page-link" href="./product_view.do?curr_page=${endPage+1 }">다음</a></li>
					  <!-- 
					    <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
					    <li class="page-item active"><a class="page-link" href="#">4</a></li>
				     -->
					  </ul>

					</nav>
					</div>
					</div>
					
				</div>
				<div class="col"></div>
			</div>	
			
			</c:if>
				
</div>


            </div>        
        </div>
        <!--메인기능 내용끝-->

       </div>
         <!--  메인기능 나오는 곳 끝 -->

         <div class="col-1" style="background-color: #f9f9fa"></div>

      </div>

      <!--  footer  -->
      <jsp:include page="../commons/footer.jsp"></jsp:include>
   </div>
<jsp:include page="../commons/alert_unread_message.jsp"></jsp:include>
   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
      integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
      crossorigin="anonymous"></script>
   <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
      integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
      crossorigin="anonymous"></script>
</body>
</html>