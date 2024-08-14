<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body class="lightpurple">
	<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
		<br>

<div class="container text-center">	
		<h1>Please fill your note details</h1><br>
		<!-- This is add form -->
		<form action="SaveNoteServlet" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Note Title</label>
    <input 
    	required
    	name="title"
    	type="text" 
    	class="form-control card-color" 
    	id="title" 
    	aria-describedby="emailHelp"
    	placeholder="Enter note title">    
  </div>
  
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
    <textarea 
    	required
    	name="content"
    	id="content" 
    	placeholder ="Enter your content here.."
    	class="form-control card-color"
    	style="height:300px;"></textarea>
  </div>
  
   <div class="container text-center">
   		<button type="submit" class="btn btn-primary">Add</button>   
   </div>
  
	</form>
</div>	
	</div>
</body>
</html>