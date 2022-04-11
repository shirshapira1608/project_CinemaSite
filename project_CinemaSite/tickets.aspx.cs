using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    public double low_price;
    public double avangers_price;
    public double eight_mile;
    public double die_hard;
    public double back_to_the_future;
    public double john_wick;
    public double jumangi;
    public double jurassic_park;
    public double pirates_of_the_caribbean;
    public double skyscraper;
    public double spiderman;
    public double shopping_price;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["shopping_price"] == null)
            Session["shopping_price"] = 0.0;
        shopping_price = (double)Session["shopping_price"];
        low_price = (double)Session["low_price"];
        avangers_price = 45 * low_price;
        eight_mile = 60 * low_price;
        back_to_the_future = 43 * low_price;
        die_hard = 35 * low_price;
        john_wick = 40 * low_price;
        jumangi = 55 * low_price;
        jurassic_park = 44 * low_price;
        pirates_of_the_caribbean = 51 * low_price;
        skyscraper = 48 * low_price;
        spiderman = 58 * low_price;
        if (IsPostBack)
        {
            if (Request.Form["buy_movies"] == "eight_mile")
            {
                Session["shopping_products"] += " Eight Mile,";
                shopping_price += eight_mile;
            }
            if (Request.Form["buy_movies"] == "avangers_infinity_war")
            {
                Session["shopping_products"] += " Avangers Infinity War,";
                shopping_price += avangers_price;
            }
            if (Request.Form["buy_movies"] == "back_to_the_future")
            {
                Session["shopping_products"] += " Back To The Future,";
                shopping_price += back_to_the_future;
            }
            if (Request.Form["buy_movies"] == "die_hard")
            {
                Session["shopping_products"] += " Die Hard,";
                shopping_price += die_hard;
            }
            if (Request.Form["buy_movies"] == "john_wick")
            {
                Session["shopping_products"] += " John Wick,";
                shopping_price += john_wick;
            }
            if (Request.Form["buy_movies"] == "jumangi_the_next_level")
            {
                Session["shopping_products"] += " Jumangi The Next Level,";
                shopping_price += jumangi;
            }
            if (Request.Form["buy_movies"] == "jurassic_park")
            {
                Session["shopping_products"] += " Jurassic Park,";
                shopping_price += jurassic_park;
            }
            if (Request.Form["buy_movies"] == "pirates_of_the_caribbean")
            {
                Session["shopping_products"] += " Pirates Of The Caribbean,";
                shopping_price += pirates_of_the_caribbean;
            }
            if (Request.Form["buy_movies"] == "skyscraper")
            {
                Session["shopping_products"] += " SkyScraper,";
                shopping_price += skyscraper;
            }
            if (Request.Form["buy_movies"] == "spiderman")
            {
                Session["shopping_products"] += " Spider-Man,";
                shopping_price += spiderman;
            }
            Session["shopping_price"] = shopping_price;
            Response.Redirect("shopping.aspx");
        }

    }
}