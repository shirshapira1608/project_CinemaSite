<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="info.aspx.cs" Inherits="Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <div class="information" style="border-top:solid;border-bottom:solid;border-color:white;margin-top:20px">
        <p style="margin-top:0;font-family: 'Agency FB' ">
            The cinema has 2 halls, and placed 
            in Friendly mall, Gan Yavne.
            This cinema called Shinema - named after 
            shir shapira's cinema, Shir
            Shapira is the founder.
            The film price range starts 
            at 35 NIS and reaches 60 NIS!
            And all the prices are reduced by
            thirty percent When you sign up for the site.
            The cinema has a buffet, with really low prices, 
            and lot of tasty food! <br>
            <b style="color:white;text-align:center">WAITING FOR YOU:)</b>
        </p>
    </div>
    <div style="margin-left: 20%; margin-right: 20%; border-bottom:white solid">
        <table>
            <tr>
                <th style="white-space:nowrap">Best Movies</th>
                <th>Summary</th>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/Eight_mile_ver2.jpg" /></td>
                <td style="margin-top:0;display:inline-block">Eight Mile<p class="summary"> In 1995 Detroit, Jimmy "B-Rabbit" Smith Jr. is a young, unhappy blue-collar worker from a poor family. Jimmy has moved back north of 8 Mile Road to the run-down trailer home in Warren, Michigan of his alcoholic mother Stephanie, his younger sister Lily, and Stephanie's abusive live-in boyfriend Greg.</p></td>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/Avengers_Infinity_War.jpg" /></td>
                <td style="margin-top:0;display:inline-block" >Avangers Infinity War <p class="summary">Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality.</p></td>
            </tr>
        </table>
    </div>
    <br />
</asp:Content>