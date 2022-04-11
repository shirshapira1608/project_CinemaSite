<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sign_in.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="login_registeration">
        <form class="signin" runat="server" method="post" style="font-family:'Agency FB'">
            <fieldset>
                <h1 style="color: black; text-align: center; font-size: 40px;" >sign in</h1>
                USERNAME: <input  style="font-size:large" type="text" placeholder="Enter Username.." name="user"/><br />
                PASSWORD: <input style="font-size:large" type="password" placeholder="Enter Password.." name="password"/><br /><br />
                <input class="submit" type="submit" name="submit" value="submit" />
            </fieldset>
        </form>
        <%=msg %>
    </div>
</asp:Content>

