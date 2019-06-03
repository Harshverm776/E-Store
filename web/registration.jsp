<html>
    <title> Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
         body{
            background-repeat: no-repeat;
            background-size:1600px;
        }
        header{
            background-color: darkblue;
            color:antiquewhite;
            height: 60px;
            text-align: center;
            position: static;
            margin-top: 0px;
            border: solid dodgerblue;
            width:1600px;
        }
        h2{
            font-size: 50px;
            font-family: fantasy;
        }
        h3{
            text-align: center;
        }
        div{
            width:300px;
            margin-left: 400px;
            padding-left: 100px;
            padding-right: 100px;
            
        }
        #home{
            position: absolute;
            margin-left: 900px;
            margin-top: 20px;
        }
    </style>
    <body background="images/register.jpg">
        <header><h2>E- Store</h2></header>
        <br>
        <h3>Registration Page</h3>
        <div class="alert alert-danger" id="home" role="alert">
            <a href="index.jsp">Home</a>
        </div>
        <div  class="alert alert-dark"  role="alert">
        <form action="SaveUser">
            Username    <input type="text" name="username"/><br><br>
            Address     <input type="text" name="address"/><br><br>
            Email       <input type="text" name="email"/><br><br>
            Mobile      <input type="text" name="mobile"/><br><br>
            User Type:  <select name="user_type">
                        <option>Buyer</option>
                        <option>Seller</option>
            </select><br><br>
            Password    <input type="password" name="password"/><br><br>
            <button type="submit" class="btn btn-secondary">Register</button>
        </form>
            </div>
    </body>
</html>
