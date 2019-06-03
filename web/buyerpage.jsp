<html>
    <title>
        Buyer Page
    </title>
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
            font-size: 60px;
            font-family: fantasy;
        }
        div{
            width:200px;
            text-align:center;
        }
        #d1{
            position:absolute;
            margin-left:100px;
            margin-top: 100px;
        }
        #d2{
            position:absolute;
            margin-left: 200px;
            margin-top: 200px;
        }
        #d3{
            position:absolute;
            margin-left: 300px;
            margin-top: 300px;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <body background="images/BuyerPage.jfif">
        <header><h2>Welcome Buyer</h2></header>
        <div class="alert alert-danger" role="alert" id="d1">
            <h5><a href="ShowSubjects.jsp">Explore-Store</a></h5>
        </div>
        <div class="alert alert-danger" role="alert" id="d2">
            <h5><a href="Cart.jsp">Cart</a></h5>
        </div>
        <div class="alert alert-info" role="alert" id="d3">
            <h5><a href="Logout">Logout</a></h5>
        </div>
        
        
        
        
    </body>
</html>
