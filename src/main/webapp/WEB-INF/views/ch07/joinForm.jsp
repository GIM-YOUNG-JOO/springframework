<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!-- BS5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jQuery 외부 라이브러리 설정 -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

<!-- 사용자 정의 JavaScript -->
<script type="text/javascript">
	
</script>
</head>

<body>
	<div class="d-flex flex-column vh-100">
		<%-- include 지시자는 소스 복사 개념 --%>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div class="flex-grow-1 m-2">
			<div class="d-flex row">
				<div class="col-md-4">
					<%@ include file="/WEB-INF/views/common/menu.jsp"%>
				</div>
				<div class="col-md-8">
					<div class="card">
						<div class="card-header">writeBoardForm</div>
						<div class="card-body">
							<form id="joinForm" method="post" action="request2">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mid</span>
									</div>
									<input id="mid" type="text" name="mid" class="form-control" value="${joinForm.mid}">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mname</span>
									</div>
									<input id="mname" type="text" name="mname" class="form-control" value="${joinForm.mname}">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mpassword</span>
									</div>
									<input id="mpassword" type="password" name="mpassword" class="form-control" value="${joinForm.mpassword}">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mjob</span>
									</div>
									<select id="mjob" name="mjob" class="form-control">
										<c:forEach var="job" items="${jobList}">
											<option value="${job}" ${job==joinForm.mjob?'selected':''}>${job}</option>
										</c:forEach>
									</select>
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mcity</span>
									</div>
									<select id="mcity" name="mcity" class="form-control">
										<c:forEach var="city" items="${cityList}">
											<option value="${city}" ${city==joinForm.mcity?'selected':''}>${city}</option>
										</c:forEach>
									</select>
								</div>

								<div class="mt-3">
									<button class="btn btn-info btn-sm mr-2">글쓰기</button>
									<a class="btn btn-info btn-sm" href="boardList">목록보기</a>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>