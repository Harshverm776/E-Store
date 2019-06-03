<html>
    <title>
        Seller Page
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
        #d4{
            position:absolute;
            margin-left: 400px;
            margin-top: 400px;
        }
         #d5{
            position:absolute;
            margin-left: 500px;
            margin-top: 500px;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <body background="images/BuyerPage.jfif">
        <header><h2>Welcome Seller</h2></header>
        <div class="alert alert-danger" role="alert" id="d1">
            <h5><a href="bookentry.jsp">Add-New-Book</a></h5>
        </div>
        <div class="alert alert-info" role="alert" id="d3">
            <h5><a href="Order.jsp">View-Order</a></h5>
        </div>
        <div class="alert alert-light" role="alert" id="d4">
            <h5><a href="Logout">Logout</a></h5>
        </div>
         <div class="alert alert-light" role="alert" id="d5">
            <h5><a href="Dshowsubject.jsp">Delete_book</a></h5>
        </div>
        
        
    </body>
</html>