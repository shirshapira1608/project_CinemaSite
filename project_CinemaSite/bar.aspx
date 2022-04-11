<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bar.aspx.cs" Inherits="bar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="color: white">
    <table class="bar" border ="1">
        <tr>
            <th class="th_bar">food</th>
            <th class="th_bar">prices</th>
        </tr>
        <tr>
            <td class="td_bar"><img src="bar/food/popcorn.jpg" /></td>
            <td class="td_bar">big popcorn - <%=TwentyNineNis %> NIS <br /> medium popcorn - <%=TwentyFourNis %> NIS <br /> small popcorn - <%=NineteenNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/food/nachos.jpg" /></td>
            <td class="td_bar">nachos - <%=TwentySevenNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/food/sandwiches.jpg" /></td>
            <td class="td_bar">every sandwich - <%=thirteenNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/food/salads.jpg" /></td>
            <td class="td_bar">salads - <%=TwentyNis %> NIS</td>
        </tr>
        <tr>
            <th class="th_bar">drinks</th>
            <th class="th_bar">prices</th>
        </tr>
        <tr>
            <td><img src="bar/drinks/cocacola.jpg" style="width: 250px"/></td>
            <td class="td_bar">coca-cola regular\zero - <%=EightNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/drinks/fuzetea.jpg" /></td>
            <td class="td_bar">fuzetea - <%=EightNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/drinks/grapes.jpg" /></td>
            <td class="td_bar">grapes juice - <%=SevenNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/drinks/mango.jpg" /></td>
            <td class="td_bar">mango juice - <%=SixNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/drinks/oranges.jpg" /></td>
            <td class="td_bar">orange juice - <%=SevenNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/drinks/spark_water.jpg" /></td>
            <td class="td_bar">spark water - <%=SevenNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/drinks/sprite.jpg" style="width: 250px"/></td>
            <td class="td_bar">sprite - <%=EightNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/drinks/tatsty_water.jpg" /></td>
            <td class="td_bar">flavoured water - <%=SevenNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/drinks/XL.jpg" /></td>
            <td class="td_bar">XL - <%=SevenNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/drinks/water.jpg" /></td>
            <td class="td_bar">water - <%=SixNis %> NIS</td>
        </tr>
        <tr>
            <th class="th_bar">candies & snackes</th>
            <th class="th_bar">prices</th>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/apropo.jpg" /></td>
            <td class="td_bar">apropo - <%=SixNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/bamba.jpg" /></td>
            <td class="td_bar">bamba - <%=SixNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/bounty.png" /></td>
            <td class="td_bar">bounty - <%=FourNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/cheese_chitos.jpg" /></td>
            <td class="td_bar">cheese chitos - <%=SixNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/chocolate_apropo.jpg" /></td>
            <td class="td_bar">chocolate apropo - <%=SevenNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/click.jpg" /></td>
            <td class="td_bar">click - <%=SevenNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/click_table.jpg" /></td>
            <td class="td_bar">click table - <%=EightNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/egozi.jpg" /></td>
            <td class="td_bar">egozi - <%=FourNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/ketchop_chitos.jpg" /></td>
            <td class="td_bar">ketchop chitos - <%=SixNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/mars.jpg" /></td>
            <td class="td_bar">mars - <%=FourNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/mexican_tapuchips.jpg" /></td>
            <td class="td_bar">mexican tapuchips - <%=SixNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/onion_tapuchips.jpg" /></td>
            <td class="td_bar">onion tapuchips - <%=SixNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/pizza_chitos.jpg" /></td>
            <td class="td_bar">pizza chitos - <%=SixNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/regular_tapuchips.jpg" /></td>
            <td class="td_bar">regular tapuchips - <%=SixNis %> NIS</td>
        </tr>
        <tr>
            <td><img src="bar/candies&snacks/tapuchips_crunch.jpg" /></td>
            <td class="td_bar">crunch tapuchips - <%=SixNis %> NIS</td>
        </tr>        
    </table>
        </div>
</asp:Content>

