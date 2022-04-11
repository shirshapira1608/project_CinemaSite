using System;
public partial class MasterPage : System.Web.UI.MasterPage
{
    public string name;
    public string login_href;
    public string administrator_href;
    public string logout_button;
    public string price;
    public double low_price;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["low_price"] == null)
        {
            Session["low_price"] = 1.000;
        }
        low_price = (double)Session["low_price"];
        name = "" + Session["login"];
        price = "" + Session["price"]; 
        if (Session["username"] == null)
        {
            login_href = "<span><b>LOGIN</b></span>";
            administrator_href = "";
            logout_button = "";
        }
        else if((string)Session["Admin"]=="1")
        {
            login_href = null;
            logout_button = "<a href='log_out.aspx'><b>LOGOUT</b></a>";
            administrator_href = "<span><b>ADMINISTRATOR</b></span>";
        }
        else
        {
            login_href = null;
            logout_button = "<a href='log_out.aspx'><b>LOGOUT</b></a>";
            administrator_href = "";
        }

    }
}