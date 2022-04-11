<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="administrator_delete.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="display:block;text-align:center">
        <h2 style="text-align: center; font-family: 'Agency FB'; color: white; font-size: 50px; margin-top: 0; text-decoration: underline">User Information - Delete</h2>
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
                <tr style="background-color:#EBEFF0">  
                    <td><asp:Label CssClass="label-name" ID="Name1" runat="server" Text='<%#Eval("name") %>' Font-Bold="true"/></td>  
                    <td><asp:Label CssClass="label-lname" ID="LastName1" runat="server" Text='<%#Eval("surname") %>' Font-Bold="true"/></td>  
                    <td><asp:Label CssClass="label-username" ID="Username1" runat="server" Text='<%#Eval("username") %>' Font-Bold="true"/></td>
                    <td><asp:Label CssClass="label-password" ID="Password1" runat="server" Text='<%#Eval("password") %>' Font-Bold="true"/></td> 
                    <td><asp:Label CssClass="label-admin" ID="Label1" runat="server" Text='<%#Eval("admin") %>' Font-Bold="true"/></td> 
                    <td><asp:Label CssClass="label-admin" ID="Id1" runat="server" Text='<%#Eval("id") %>' Font-Bold="true"/></td> 
                </tr>   
            </ItemTemplate>        
        </asp:Repeater>  
        <form runat="server" method="post">
            <fieldset style="background-color: #EBEFF0">
                Delete the ID number: <input type="number" name="id" id="id" />
                <input type="submit" name="submit" class="submit" value="Delete" />
            </fieldset>
            <%=msg %>
        </form>
    </div>
</asp:Content>