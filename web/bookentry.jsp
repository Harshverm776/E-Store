<html>
    <title>
        Add Book
    </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body{
            background-repeat: no-repeat;
            background-size:1600px 800px;
            color: white;
        }
        header{
            background-color: floralwhite;
            color:black;
            height: 60px;
            text-align: center;
            position: static;
            margin-top: 0px;
            border: solid black;
            width:1600px;
        }
        h2{
            font-size: 50px;
            font-family: fantasy;
        }
        div{
            width:400px;
            position: absolute;
            margin-left: 50px;
            margin-top: 50px;
        }
        </style>
    <body background="images/addBook.jpg">
        <header><h2>Book Entry Page</h2></header>
            <div class="alert alert-primary" role="alert">
                        <a href=sellerpage.jsp>Seller-Home-Page</a>
            </div>
        <div class="alert alert-light" role="alert">
        <form action="SaveBook">
            Bookid      <input type="text" name="bookid"/><br><br>
            Title       <input type="text" name="title"/><br><br>
            Author      <input type="text" name="author"/><br><br>
            Subject     <select name="subject">
                        <option>English</option>
                        <option>Physics</option>
                        <option>Computer Science</option>
                        <option>Chemistry</option>
                        <option>Biology</option>
                        <option>Maths</option>
                        <option>Informatics Practices</option>
                        </select><br><br>
            Price       <input type="text" name="price"/><br><br>
            Quantity    <input type="number" name="quantity"/><br><br>
                        <button type="submit" class="btn btn-dark">Save</button>
        </form>
        </div>        
    </body>
</html>
