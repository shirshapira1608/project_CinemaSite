﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class log_out : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["login"] = "";
        Session["price"] = "";
        Session["username"] = null;
        Session["low_price"] = 1.000;
        Response.Redirect("info.aspx");
    }
}