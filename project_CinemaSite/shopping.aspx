<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shopping.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="shopping">
        <%=msg %>
        <form  method="post" runat="server">
                 <asp:Button CssClass="submit" ID="ok" Text="OK" runat="server" Onclick="OkButton"/>
                 <asp:Button CssClass="submit" ID="clean" Text="clean" runat="server" Onclick="CleanButton"/>
        </form>
    </div>
</asp:Content>