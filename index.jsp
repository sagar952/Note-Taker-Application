<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.todo.connection.FactoryProvider"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@include  file="components/component_css_js.jsp" %>
   
    <title>Add Note:Note Taker</title>
  </head>
  <body>
      <div class="container">
      <%@include  file="components/navbar.jsp" %>
      </div>
      
    <h1 class="text-center  mt-3 text-uppercase">Please Fill Your Note Details!!!</h1>
    
    <%@include  file="components/message.jsp" %>
      <!--form designing--> 
      <div class="container">
          <div class="col-12">
              <form action="SaveServlet" method="post">
                  <div class="form-group">
                      <label>Enter your Note Title:</label>
                      <input type="text" name="title" placeholder="Enter your Note Title" class="form-control">  
                  </div>
                  <div class="form-group">
                      <label>Enter your Note Content:</label>   
                      <textarea   name="content" class="form-control"  rows="8" placeholder="Enter your Note:"></textarea>
                  </div>
                  <div class="container text-center">
                      <button type="submit" class="btn btn-outline-success" >Add Note</button>
                      <button type="reset" class="btn btn-outline-primary" >Reset</button>
                  </div>
              </form>
          </div>
          
          
          
      </div>
    
    
    
    
  </body>
</html>
