<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Default5" %>

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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="login_registeration" style="font-family:'Agency FB'" >
    <form class="register" method="post" runat="server" onsubmit="return validate()">
        <fieldset>
            <h1 class="title" style="font-size:40px">registration</h1>
            USERNAME: <input style="font-size:large" type = "text" name="username" placeholder="Enter Username..." id="username" /><br />
            PASSWORD: <input style="font-size:large" type = "password" name="password" placeholder="Enter Password..." id="passwordx"/><br />
            PASSWORD: <input style="font-size:large" type = "password" name="password_check" placeholder="Re-enter Password..." id="passwordy"/><br />
            FIRST NAME: <input style="font-size:large" type = "text" name="firstname" placeholder="Enter First Name..." /><br />
            LAST NAME: <input style="font-size:large" type = "text" name="surename" placeholder="Enter Last Name..." /><br />
            GENDER: MALE<input style="font-size:large" type="radio" name="gender" value="male" />
            FEMALE <input style="font-size:large" type="radio" name="gender" value="female"/><br /><br />
            
            <input class="submit" type="submit" name="submit" value="submit" />

        </fieldset>
    </form>
        </div>
    <%=msg_username_is_exist %>
</asp:Content>
