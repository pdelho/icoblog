<%@ include file="/WEB-INF/views/include.jsp"%>
<html>

<head>
	
	<title>Delhoyo Webapp</title>
	<!-- META JS and CSS -->
	<%@ include file="/WEB-INF/views/common/metajscss.jsp"%>
	
	 <!-- Table CSS -->
	 <link href="<%=request.getContextPath()%>/resources/css/table.css" rel="stylesheet">

</head>



<body>
	
	<!-- Navigation -->
    <%@ include file="/WEB-INF/views/common/navbar.jsp"%>
    
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">List of Posts </h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a  href="<spring:url value ="/"/>">Home</a>
            </li>
            <li class="breadcrumb-item active">List of citizens</li>
        </ol>

        <!-- Intro Content -->
        <div class="row">
	        
            <div class="col-lg-6">
            <form action="<spring:url value ="/post/add"/>">
			    <input type="submit" value="Write a post!" />
			</form>
			<br>
            <table class="tg">
			  <tr>
			    <th class="tg-9hbo">Id</th>
			    <th class="tg-9hbo">title</th>
			    <th class="tg-9hbo">Content</th>
			    <th class="tg-9hbo">Tags</th>
			    <th class="tg-9hbo">Age</th>
			    <th class="tg-9hbo">Actions</th>
			  </tr>
                <c:forEach items="${posts}" var="post">
					<c:if test="${not empty post}">
					<tr>
						<td class="tg-yw4l"><i><c:out value="${post.id}" /></i></td>
						<td class="tg-yw4l"><c:out value="${post.title}" /></td>
						<td class="tg-yw4l"><c:out value="${post.content}" /></td>
						<td class="tg-yw4l"><c:out value="${post.description}" /></td>
						<td class="tg-yw4l"><c:out value="${post.age}" /></td>
						<td class="tg-yw4l"><a href="<c:url value="/post/${post.id}"/>">Update</a>
											<a href="<c:url value="/post/delete/${post.id}"/>">Delete</a></td>
					</tr>			
					</c:if>
				</c:forEach>
			</table>
			<br>		
            </div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
    
    
	<!-- Footer -->
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>
    
</body>
</html>
