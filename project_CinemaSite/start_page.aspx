<%@ Page Language="C#" AutoEventWireup="true" CodeFile="start_page.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
</head>
<body style="background-image: url('pictures/cinema.jpg'); background-size: cover; background-repeat: no-repeat">
        <p class="start_page_title" >WELCOME TO SHINEMA!</p>
        <form runat="server" method="post" style="margin-left:45%; margin-right:50%; display:inline-block;">
            <asp:Button CssClass="submit" ID="enter" Text="Enter" runat="server" Onclick="EnterButton"/>
            <asp:Button CssClass="submit" ID="sign_in" Text="Sign In" runat="server" Onclick="SignInButton"/>
            <asp:Button CssClass="submit" ID="register" Text="Register" runat="server" Onclick="RegisterButton"/>
        </form>
</body>
</html>
