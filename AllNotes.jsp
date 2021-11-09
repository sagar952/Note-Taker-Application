

<%@page import="java.util.List"%>
<%@page import="com.todo.entity.NoteEntity"%>
<%@page import="com.todo.connection.FactoryProvider"%>
<%@page import="com.todo.Dao.NoteDao"%>
<%@page import="com.todo.Dao.NoteDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Notes: Note Taker</title>
        <%@include  file="components/component_css_js.jsp" %>
    </head>
    <body>
        <div class="container">
            
        <%@include  file="components/navbar.jsp" %>
        <h3 class="text-uppercase">All Notes:</h3>
        <%@include  file="components/message.jsp" %>
        <div class="row">
            <div class="col-12">
        <%
                           NoteDao Dao=new NoteDao(FactoryProvider.getFactory());
                           List<NoteEntity> note=Dao.allNotes();
                           for(NoteEntity n:note)
                           {
        %>
        
        <div class="card mt-2">
  <img class="card-img-top img-fluid ml-3 mt-2" src="img/note.png" style="max-width: 90px;" >
  <div class="card-body">
    <h5 class="card-title"><%= n.getTitle() %></h5>
    <p class="card-text"><%=n.getContent() %></p>
    <h6><span>Edit Date:</span><b><%=n.getaddDate() %></b></h6>
<div class="container text-center mt-2">
    <a href="DeleteServlet?note_id=<%=n.getId()%>" class="btn btn-outline-danger">Delete</a>
    <a href="UpdateNote.jsp?note_id=<%=n.getId()%>" class="btn btn-outline-success">Edit Note</a>
</div> 
</div>
</div>
        
        
        <%
            }
        %>
            </div> 
        </div>
        </div>
    </body>
</html>
