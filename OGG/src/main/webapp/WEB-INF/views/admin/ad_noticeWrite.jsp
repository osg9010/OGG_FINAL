<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>공지사항 작성</title>
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${path }/css/admin/admin.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="${path }/css/admin/noticeWrite.css">
        <script type="text/javascript" src="${path}/js/jquery-3.6.0.min.js"></script>
        <script type="text/javascript" src="${path}/smarteditor2/js/HuskyEZCreator.js" charset="utf-8"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="${path}/admin/home">관리자 페이지</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link" href="/">
                                <div class="sb-nav-link-icon"><i class="fa-sharp fa-solid fa-house"></i></div>
                                홈으로
                            </a>
                            <a class="nav-link" href="${path}/admin/home">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-toolbox"></i></div>
                                관리자 메인
                            </a>
                            <a class="nav-link" href="${path}/admin/OTT">
                                <div class="sb-nav-link-icon"><i class="fa-sharp fa-solid fa-video"></i></div>
                                OTT관리
                            </a>
                            <a class="nav-link" href="${path}/admin/member">
                                <div class="sb-nav-link-icon"><i class="fa-sharp fa-solid fa-user"></i></div>
                                회원관리
                            </a>
                            <a class="nav-link" href="${path}/admin/notice">
                                <div class="sb-nav-link-icon"><i class="fa-sharp fa-solid fa-bell"></i></div>
                                공지사항
                            </a>
                            <a class="nav-link" href="${path}/admin/question">
                                <div class="sb-nav-link-icon"><i class="fa-sharp fa-solid fa-envelope"></i></div>
                                문의/신고
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">공지 사항</h1>
                        <br>
                        <div class="card mb-4">
                            
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fa-sharp fa-solid fa-bell"></i>&nbsp;공지 사항
                            </div>
                            <div class="card-body">
                                <div class="page-title">
                                    <div class="container">
                                        <br>
                                        <h3>공지사항</h3>
                                    </div>
                                </div>
                            
                                <!-- board seach area -->
                                <div id="board-search">
                                    <div class="container">
                                        <div class="search-window">
                                            <form action="">
                                                <div class="search-wrap">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                
                            <!-- board list area -->
                                <div id="board-list">
                                    <div class="container">
									<form action="${path }/notice/write" method="POST">
										<table class="board-table">
											<thead>
												<!-- enctype="multipart/form-data" -->
												<!-- 
                                                <input type="hidden" name = "n_M_No" value = ${member.id }>
                                             -->

												<tr>
													<th><input type="text" placeholder="제목을 입력하세요"
														name="n_title" id="writingName"></th>

												</tr>
											</thead>
										</table>
										<br>
										<textarea name="n_content" id="n_content" cols="30" rows="10"></textarea>
										<br>
										<div id="btn1">
											<input type="submit" value="작성완료" id="subBtn"> 
											<input type="button" value="작성취소" id="goBack" onclick="location.href='${path}/admin/notice?page=1'">
										</div>
									</form>
								</div>
                                    </div>
                                </div>

                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path}/js/admin/script.js"></script>
        <script type="text/javascript">
        	var oEditors = [];
        	$(function(){
        		nhn.husky.EZCreator.createInIFrame({
        		oAppRef: oEditors,
        		elPlaceHolder: "n_content",
        		sSkinURI: "${path}/smarteditor2/SmartEditor2Skin.html",
        		fCreator: "createSEditor2"
        		});
        		
        		$("#subBtn").on("click", function() {
        			oEditors.getById["n_content"].exec("UPDATE_CONTENTS_FIELD",[]);
        		});
        		
        		});
        </script>
    </body>
</html>
