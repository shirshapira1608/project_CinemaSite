using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public double shopping_price_session;
    public string shopping_products_session;
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["shopping_price"] == null)
            Session["shopping_price"] = 0.0;
        shopping_price_session = (double)Session["shopping_price"];
        shopping_products_session = (string)Session["shopping_products"];
        if ((double)Session["shopping_price"] == 0.0)
            msg = "You did not buy anything right now";
        else
            msg = "You decided to buy a ticket for: " + shopping_products_session + " all those ticket/s coast " + shopping_price_session;
        
    }
    protected void CleanButton(object sender, EventArgs e)
    {
        Session["shopping_price"] = 0.0;
        Session["shopping_products"]= "";
        Response.Redirect("info.aspx");
    }
    protected void OkButton(object sender, EventArgs e)
    {
        Response.Redirect("info.aspx");
    }
}