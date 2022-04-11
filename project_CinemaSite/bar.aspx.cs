using System;
public partial class bar : System.Web.UI.Page
{
    public double low_price;
    public double SixNis;
    public double SevenNis;
    public double EightNis;
    public double FourNis;
    public double TwentyNis;
    public double NineteenNis;
    public double thirteenNis;
    public double TwentyFourNis;
    public double TwentyNineNis;
    public double TwentySevenNis;
    protected void Page_Load(object sender, EventArgs e)
    {
        low_price = (double)Session["low_price"];
        SixNis = 6 * low_price;
        SevenNis = 7 * low_price;
        EightNis = 8 * low_price;
        FourNis = 4 * low_price;
        TwentyNis = 20 * low_price;
        NineteenNis = 19 * low_price;
        thirteenNis = 13 * low_price;
        TwentyFourNis = 24 * low_price;
        TwentyNineNis = 29 * low_price;
        TwentySevenNis = 27 * low_price;
    }
}