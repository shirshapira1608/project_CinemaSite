<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="administrator_edit.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function validate()
        {
            var password_one = document.getElementById("passwordx");
            var password_two = document.getElementById("passwordy");
            var user = document.getElementById("username");
            if (user.value == "" || user.value == null) {
                user.style.backgroundColor = "red";
                user.placeholder = "username isn't valid";
                password_two.style.backgroundColor = null;
                password_two.placeholder = "Re-enter Password...";
                password_one.style.backgroundColor = null;
                password_one.placeholder = "Enter Password...";
                return false;
            }
            else {
                user.style.backgroundColor = null;
                user.placeholder = "Enter Username...";
            }


            if (password_one.value != password_two.value || password_one.value == null || password_one.value == "") {
                password_two.style.backgroundColor = "red";
                password_two.placeholder = "the passwords must be the same";
                password_one.style.backgroundColor = "red";
                password_one.placeholder = "the passwords must be the same";
                return false
            }
            else {
                password_two.style.backgroundColor = null;
                password_two.placeholder = "Re-enter Password...";
                password_one.style.backgroundColor = null;
                password_one.placeholder = "Enter Password...";
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="display:block;text-align:center">
        <h2 style="text-align: center; font-family: 'Agency FB'; color: white; font-size: 50px; margin-top: 0; text-decoration: underline">User Information - Edit</h2>
    </div>

    <div>
         <asp:Repeater ID="rptUsers" runat="server">  
            <HeaderTemplate> 
              
                <table style="width:100%;color:grey;text-align:center;margin-top:0">  
                    <tr style="background-color: steelblue; color:white; font-size: 32px; font-weight: bold;">  
                        <td><b>Name</b></td>  
                        <td><b>Last Name</b></td>  
                        <td><b>Username</b></td>
                        <td><b>Password</b></td>
                        <td><b>Admin</b></td>
                        <td><b>ID</b></td>
                    </tr>  
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="row" style="background-color:#EBEFF0">  
                    <td><asp:Label  ID="Name1" runat="server" Text='<%#Eval("name") %>' Font-Bold="true"/></td>  
                    <td><asp:Label  ID="LastName1" runat="server" Text='<%#Eval("surname") %>' Font-Bold="true"/></td>  
                    <td><asp:Label  ID="Username1" runat="server" Text='<%#Eval("username") %>' Font-Bold="true"/></td>
                    <td><asp:Label  ID="Password1" runat="server" Text='<%#Eval("password") %>' Font-Bold="true"/></td> 
                    <td><asp:Label  ID="Label1" runat="server" Text='<%#Eval("admin") %>' Font-Bold="true"/></td> 
                    <td><asp:Label  ID="Id1" runat="server" Text='<%#Eval("id") %>' Font-Bold="true"/></td> 
                </tr>   
            </ItemTemplate>        
        </asp:Repeater> 
        <div class="login_registeration" style="font-family:'Agency FB'" >
            <form class="register" method="post" runat="server" onsubmit="return validate()">
                <fieldset style="font-size: 25px">
                    <h1 class="title" style="font-size:40px">Edit user by id</h1>
                    ID NUMBER: <input type="number" name="id" id="id" /><br />
                    USERNAME: <input style="font-size:large" type = "text" name="username" placeholder="Enter Username..." id="username" /><br />
                    PASSWORD: <input style="font-size:large" type = "password" name="password" placeholder="Enter Password..." id="passwordx"/><br />
                    PASSWORD: <input style="font-size:large" type = "password" name="password_check" placeholder="Re-enter Password..." id="passwordy"/><br />
                    FIRST NAME: <input style="font-size:large" type = "text" name="firstname" placeholder="Enter First Name..." /><br />
                    LAST NAME: <input style="font-size:large" type = "text" name="surename" placeholder="Enter Last Name..." /><br />
                    ADMIN <input style="font-size:large" type="radio" name="admin" value="admin" /><br /><br />
                    <input class="submit" type="submit" name="submit" value="submit" />
               </fieldset>
            </form>
            <%=msg %>
        </div>
    </div>

</asp:Content>

