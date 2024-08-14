<%@ page import="com.helper.FactoryProvider"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notes App: Update Page</title>
<%@ include file="all_js_css.jsp"%>


</head>
<body class="lightpurple">
	<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
		<br>
		<div class="container text-center">
			<h1>Edit your note</h1>
			<br>
			<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Note note = (Note) s.get(Note.class, noteId);
			%>

			<!-- This is edit form -->
			<form action="UpdateServlet" method="post">

				<input value="<%=note.getId()%>" name="noteId" type="hidden"/>

				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Note
						Title</label> <input required name="title" type="text"
						class="form-control card-color" id="title"
						aria-describedby="emailHelp" value="<%=note.getTitle()%>">
				</div>

				<div class="mb-3">
					<label for="content" class="form-label">Note Content</label>
					<textarea required name="content" id="content"
						class="form-control card-color" style="height: 300px;"><%=note.getContent()%></textarea>
				</div>

				<div class="container text-center">
					<button type="submit" class="btn btn-primary">Save your
						note</button>
				</div>

			</form>
		</div>
	</div>


</body>
</html>