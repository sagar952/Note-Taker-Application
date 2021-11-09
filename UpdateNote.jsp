

<%@page import="org.hibernate.Session"%>
<%@page import="com.todo.connection.FactoryProvider"%>
<%@page import="com.todo.entity.NoteEntity"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Note:Note Taker</title>
        <%@include  file="components/component_css_js.jsp"%>
    </head>
    <body>
        <%
       int id=Integer.parseInt(request.getParameter("note_id").trim());
      Session s=(Session)FactoryProvider.getFactory().openSession();
      {
       NoteEntity note=s.get(NoteEntity.class, id);
        %>
        <div class="container">
            <%@include  file="components/navbar.jsp" %>
            <div class="row">
                <div class="col-12">
                    <h3 class="text-center">Edit Your Note!!!</h3>
                    <form action="EditServlet" method="post">
                        <input type="hidden" value="<%= note.getId() %>"  name="id">
                        <div class="form-group">
                            <label>Enter your Title:</label>
                            <input type="text" value="<%= note.getTitle() %>" name="title" placeholder="Enter your Title:" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Enter your Content:</label>
                            <input type="text" value="<%=note.getContent() %>" name="content" placeholder="Enter your Title:" class="form-control">
                        </div>
                        <div class="container text-center mt-2">
                            <button type="submit" class="btn btn-outline-success">Submit</button>
                            <button type="reset" class="btn btn-outline-primary">reset</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
       <%
       
       s.close();
           }
       %>
    </body>
</html>
