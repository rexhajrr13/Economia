<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="includes/bootstrapMeta.inc"%>
<title>Economia Building Page</title>
<%@include file="includes/bootstrapCss.css"%>
<%@include file="includes/treeView.css"%>
<body class="" sytle="">
	<div class="row">
		<div class="col-md-12">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="container">
				<div class="navbar-header">
					<p class="navbar-text">
						<font color=#ee4d2e><b>Economia</b></font>
					</p>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="list">My Castle</a></li>
						<li class="active"><a href="buildings">Buildings</a></li>
						<li><a href="recruits">Recruits</a></li>
						<li><a href="trade">Trade</a></li>
						<li><a href="fight">Fight</a></li>



					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li><a class="btn btn-info" href="history"><font
								color=#fff>History</font></a></li>
						<li>`</li>
						<li><a class="btn btn-danger" href="logout"><font
								color=#fff>Logout</font>							
						</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
				
	<div class="container" role="main">
		<div class="jumbotron">
					<h2>Upgrade your Castle!</h2>
					<p>Build new buildings, upgrade them and freak out about their stats.</p>
					<br>
					
					
					<c:if test="${not empty errorMessage}">
						<div class="alert alert-danger" role="alert">${errorMessage}</div>
					</c:if>
					<!--  Error message ----------------------------------------------------------- -->
			
					<!--  Warning message ----------------------------------------------------------- -->
					<c:if test="${not empty warningMessage}">
						<div class="alert alert-warning" role="warning">
							${warningMessage}</div>
					</c:if>
					<!--  Warning message ----------------------------------------------------------- -->
			
					<!--   message ----------------------------------------------------------- -->
					<c:if test="${not empty message}">
						<div class="alert alert-success" role="warning">${message}</div>
					</c:if>
					<p>
						<a class="btn btn-success btn-large" href="addBuilding?id=1">new construction</a>
					</p>
					
					
					<h2>Your Buildings</h2>
					<div align = "center">
						<div class="label label-primary" align = "center">o. = output</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<table data-toggle="table" class="table table-striped">
								<thead>
									<tr>
										<th>Type</th>
										<th>Level</th>
										<th>Wood o.</th>
										<th>Stone o.</th>
										<th>Food o.</th>
										<th>Gold o.</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${buildings}" var="building">
										<tr>
											<td><img src="${building.icon}" alt="${building.name}" style="width:100;height:85px;">
												<br><h5 align="center">${building.name}</h5></td>		
											<td>${building.level}</td>
											<td>${building.woodOutput}</td>
											<td>${building.stoneOutput}</td>
											<td>${building.foodOutput}</td>
											<td>${building.goldOutput}</td>
											<!-- <td><fmt:formatDate value="${player.dayOfBirth}"
													pattern="dd.MM.yyyy" /> -->
											<td><a class="btn btn-success btn-large" href="Delete?id=${player.username}">Upgrade</a></td>
										</tr>
										<tr>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<hr>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div id="footer">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<table class="table" style="background-color:#ee4d2e;">
					<thead>
						<tr>
							<th>
						        <div class="well well-sm" >
								  <center>Wood: <b>${player.wood}</b></center>
								</div>			
							</th>
							<th>
						        <div class="well well-sm" >
								  <center>Stone: <b>${player.stone}</b></center>
								</div>			
							</th>
							<th>
						        <div class="well well-sm" >
								  <center>Food: <b>${player.food}</b></center>
								</div>		
							</th>
							<th>
						        <div class="well well-sm" >
								  <center>Gold: <b>${player.gold}</b></center>
								</div>			
							</th>
						</tr>
					</thead>
				</table>
			</div>
		 </div>
	</div>
<!--  end of container -->
	<%@include file="includes/bootstrapJs.jsp"%>
</body>
</html>