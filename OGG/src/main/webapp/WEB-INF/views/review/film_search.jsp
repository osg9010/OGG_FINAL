<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- my CSS -->
<link rel="stylesheet" href="${path}/css/review/ogg_review.css">

<!-- my JS -->
<script defer src="${path}/js/review/film_search.js"></script>

<!-- start -->
<div class="container" style="margin-bottom: 100px;">

    <div class="row" style="padding-top: 20px;">
        <div class="col" style="margin-left: 2%;"></div>
        <div class="col"></div>
        <div class="col">
            <input type="text" class="form-control" id="searchInput">
            <button class="btn btn-primary" type="button" style="display: inline; height: 36px; margin-bottom: 5px;"id="searchBtn">검색</button>
        </div>
    </div>
        
    <!-- 1st row -->
    <div class="searchdiv" id="searchdiv1">
    
    </div>
    <!-- 2nd row -->
    <div class="searchdiv" id="searchdiv2">
    
    </div>
    <!-- 3rd row -->
    <div class="searchdiv" id="searchdiv3">
    
    </div>
</div>
<!-- end -->

<script>
	$("#searchBtn").on("click", () => {
		var keyword = $("#searchInput").val();
		var type = $("#searchType").val();
		
        console.log(keyword);

        if(!keyword){
            alert('검색어를 입력해주세요');
        }else{
            location.href="${path}/film/search?type=" + type + "&keyword=" + keyword;
        }

	    // location.href="${path}/film/search?type=" + type + "&keyword=" + keyword;
	    location.href="${path}/film/search?keyword=" + keyword;
	});
	
	let searchkeyword = "[[${searchkeyword}]]";
	let searchtype = "[[${searchtype}]]";
	var contextpath = "${ pageContext.request.contextPath }";
</script>

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>