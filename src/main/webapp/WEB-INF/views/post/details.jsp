<%@ include file="/WEB-INF/views/include.jsp"%>
<html>

<head>
	
	<title>Delhoyo Webapp</title>
	<!-- META JS and CSS -->
	<%@ include file="/WEB-INF/views/common/metajscss.jsp"%>
	
	<!-- Form CSS -->
	<link href="<%=request.getContextPath()%>/resources/css/form.css" rel="stylesheet">

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
            <li class="breadcrumb-item active"><a href="<spring:url value ="/posts"/>">List of posts</a></li>
        </ol>

        <!-- Intro Content -->
        <div class="row">
	        <spring:url value="/post" var="postUpdateeUrl" />
        	<form action="${postUpdateeUrl}" method="post">
        	
        		<input type="hidden" name="id" value="${post.id}"  />
        	
	            <label for="title">Title</label>
		        <p align ="right"><input type="text" name="title" value="${post.title}"  /></p>
		        
		        <label for="content">Content</label>
		        <textarea cols="50" rows="4" name="content" >${post.content}</textarea>

<%-- 		        <label for="last_name">Last name</label>
		        <p align ="right"><input type="text" name="content" value="${post.content}" />  </p> --%>    

		        <label for="age">Age <span class="req"></span></label>
		           <p align ="right"><input type="number" name="age" value="${post.age}" /></p>
		              
		       <div class="divider"></div>

		       <label for="description">Description</label>
		       <textarea cols="50" rows="4" name="description" >${post.description}</textarea>
		       
		          <input class="btn btn-primary" type="submit" value="Update your information" />
		          <small>or press <strong>enter</strong></small>
		    </form>  
            
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
    
    
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>
    
</body>
</html>
