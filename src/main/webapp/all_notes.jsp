<%@ page import="com.helper.FactoryProvider"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entities.Note"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notes App: All Notes</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body class="lightpurple">
	<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
		<br>
		<div class="container">

			<h1 class="text-uppercase">All notes:</h1>

			<div class="row">
				<div class="col-12">
					<%
					Session s = FactoryProvider.getFactory().openSession();
					Query query = s.createQuery("from Note");
					List<Note> noteList = query.list();
					//stream api

					for (Note note : noteList) {
					%>

					<div class="card mt-3 card-color">
						<img src="images/notes.png" class="card-img-top m-4 mx-auto" alt="Note Image" style="max-width:100px;">
						<div class="card-body px-5">
							<h4 class="card-title"><%=note.getTitle() %></h4>
							<p class="card-text"><%=note.getContent() %></p>
							<p><b>Last Updated: </b><b class="text-primary">
								<%
									Date dateObj = note.getAddedDate();
									String date = "MMM dd yyyy 'at' h:mm:ss a";
									SimpleDateFormat sd = new SimpleDateFormat(date);
									String formattedDate = sd.format(dateObj);
								%>
									<%= formattedDate %>
								
							</b></p>
							<div class="container text-center mt-2">
								<a href="DeleteNoteServlet?note_id=<%= note.getId() %>" class="btn btn-danger m-2">Delete</a>
								<a href="edit.jsp?note_id=<%= note.getId()%>" class="btn btn-primary m-2">Update</a>
							</div>
						</div>
					</div>



					<%
					}

					s.close();
					%>

				</div>
			</div>


			<br>
		</div>
	</div>

</body>
</html>