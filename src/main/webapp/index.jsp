<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Notes App: Home Page</title>
<%@ include file="all_js_css.jsp" %>


</head>


<body class="lightpurple">
	<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
				
		<div class="card py-5 lightpurple">
		<img class="img-fluid mx-auto" alt="Notes Image" src="images/notes.png" style="max-width:400px;">
		<h1 class="text-primary text-uppercase text-center mt-3">Start Taking Your Notes</h1>
		<div class="container text-center">
			<a href="addNotes.jsp" class="btn btn-outline-primary text-center">Start Here</a>
		</div>
		</div>
	</div>

</body>
</html>



