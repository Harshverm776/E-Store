<html>
    <title>home</title>
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
        div{
            margin-left: 100px;
            margin-top:300px;
            position: absolute;
            width:400px;
        }
        #register{
            position: absolute;
            margin-left: 100px;
            margin-top: 120px;
            text-align: center;
        }
         #login h3{
            text-align: center;
        }
        
         #register h4{
            text-align: center;
        }
        </style>
    <body background="images/home.jpg">
        <header><h2>E- Store</h2></header>
        
        <div class="alert alert-dark" role="alert" id="register">
            <h4>New User<br> Register Here...<br></h4>
              <a href="registration.jsp">Register-User</a>
          </div>
        <form action="VerifyUser" method="post">
            <div  class="alert alert-primary" id="login">
                <h3>Login</h3>
                User-Id:           <input type="text" name="email"/><br><br>
                Password:    <input type="password" name="password"/><br><br>
                User Type:    <select name="user_type">
                        <option>Buyer</option>
                        <option>Seller</option>
                        </select>
                <br><br>                                                                                                                          
                <button type="submit" class="btn btn-success"> Login</button>
            </div>
        </form>
      
    </body>
</html>
