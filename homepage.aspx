<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Online Grocery Store System</title>
    <link rel="stylesheet" type="text/css" href="homepage.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <div class="header"> 
    <div class="container">
    <div class="navbar">
    <div class="logo">
    <img src="images/mainlogo.png" />
    </div>
    <nav>
    <ul>
    <li class="fa fa-home"><a href="#">&nbsp;Home</a></li>
     <li class="fa fa-user"><a href="#">&nbsp;About</a></li>
      <li class="fa fa-shopping-bag"><a href="Default.aspx"">&nbsp;Shop Products</a></li>
      <li class="fa fa-address-book-o"><a href="#">&nbsp;Contact</a></li>
      <li class="fa fa-user"><a href="Login.aspx">&nbsp;Login</a></li>
       <li class="fa fa-plus-square"><a href="Registration.aspx">&nbsp;Register</a></li>
    </ul>
    </nav>
    </div>
    <div class="row">
    <div class="col-2">
    <h1> Best Online Grocery Website</h1>
    <p> We provide best products</p>
    <a href="#" class="btn">Shop now &#8594;</a>
   </div>
   <div class="col-2">
   <img src="images/transparent png.jfif" />
   </div>
    </div>

    </div>
    </div>
    <!--------------------Categories Books ---------------->
    <div class="categories">
    <h3>Categories</h3>
    <div class="row1">
    <div class="col-3">
    <img src="images/Packagedfood.jfif" />
    </div>
    <div class="col-3">
    <img src="images/dairy.jfif" />
    </div>
    <div class="col-3">
    <img src="images/FandV.jfif" />
    </div>
    <div class="col-3">
    <img src="images/handK.jfif" />
    </div>
    <div class="col-3">
    <img src="images/Personalcare.jfif" />
    </div>
    <div class="col-3">
    <img src="images/Grocery.jfif" />
    </div>


    </div>
    </div>
</body>
</html>
