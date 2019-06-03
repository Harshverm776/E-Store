<%-- 
    Document   : BookList
    Created on : Apr 7, 2019, 11:59:16 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book List</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    </head>
    <style>
        body{
            background-repeat: no-repeat;
            background-size:1600px;
        }
        header{
            background-color: black;
            color:antiquewhite;
            height: 60px;
            text-align: center;
            position: static;
            margin-top: 0px;
            border: solid dodgerblue;
            width:1600px;
        }
        h2{
            margin-top: 0px;
            font-size: 40px;
            font-family: fantasy;
        }
        div{
            width: fit-content;
            margin-left: 400px;
        }
        button{

        }
        #choose{
            position:absolute;
            margin-left: 100px;
            margin-top: 40px;
        }
        #home{
            position:absolute;
            margin-top:10px;
            margin-left: 1000px;
            background-color: black;
            padding: 10px;
        }
        #sub{
            margin-left:200px;
            margin-top: 20px;
        }
    </style>
    <body background="images/BookDetails.jpg">
        <header><h2>Book Store</h2></header>
        <div class="alert alert-dark" role="alert" id="choose">
            <b><br><br>S<br>E<br>L<br>E<br>C<br>T<br> <br><br><br><br>S<br>U<br>B<br>J<br>E<br>C<br>T<br><br><br><br></b>
          </div>
        <div id="home"><a href=buyerpage.jsp><b>Buyer-Home</b></a></div>
        <div id="sub">    
        <div class="alert alert-primary" role="alert">
                <form action="ShowBooks.jsp"><input type="text" name="sub" value="English" hidden>
                    <button class="btn btn-primary">English</button></form>
          </div>
          <div class="alert alert-secondary" role="alert">
              <form action="ShowBooks.jsp"><input type="text" name="sub" value="Physics" hidden>
                  <button class="btn btn-secondary">Physics</button></form>
          </div>
          <div class="alert alert-success" role="alert">
              <form action="ShowBooks.jsp"><input type="text" name="sub" value="Computer Science" hidden>
                  <button class="btn btn-success">Computer Science</button></form>
          </div>
          <div class="alert alert-danger" role="alert">
              <form action="ShowBooks.jsp"><input type="text" name="sub" value="Chemistry" hidden>
                  <button class="btn btn-danger">Chemistry</button></form>
          </div>
          <div class="alert alert-warning" role="alert">
                <form action="ShowBooks.jsp"><input type="text" name="sub" value="Biology" hidden>
                    <button class="btn btn-warning">Biology</button></form>
          </div>
          <div class="alert alert-info" role="alert">
              <form action="ShowBooks.jsp"><input type="text" name="sub" value="Maths" hidden>
                  <button class="btn btn-info">Maths</button></form>
          </div>
          <div class="alert alert-light" role="alert">
              <form action="ShowBooks.jsp"><input type="text" name="sub" value="Informatics Practices" hidden>
                  <button class="btn btn-light">Informatics Practices</button></form>
          </div>
            </div>
    </body>
</html>
