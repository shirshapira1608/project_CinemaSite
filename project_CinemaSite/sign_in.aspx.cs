using System;
using System.Data;
using System.Data.SqlClient;

public partial class Default4 : System.Web.UI.Page
{
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["low_price"] = 1.000;
        Session["Admin"] = "0";
        Session["username"] = null;
        Session["login"] = null;
        string user = Request.Form["user"];
        string password = Request.Form["password"];
        if (IsPostBack)
        {
            SqlConnection connection = new SqlConnection(Connection());
            string sql = "SELECT * FROM Registeration";
            connection.Open();
            SqlCommand cmd = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            connection.Close();
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DataRow dr = ds.Tables[0].Rows[i];
                if (user == dr["Username"].ToString().Trim() && password == dr["Password"].ToString().Trim())
                {
                    Session["price"] = "login verified! Now all prices are reduced by 30 percent!";
                    Session["login"] = "Hello, " + dr["Name"].ToString().Trim();
                    Session["username"] = User;
                    if ((bool)dr["Admin"])
                    {
                        Session["Admin"] = "1";
                    }
                    else
                    {
                        Session["Admin"] = "0";
                    }

                    Session["low_price"] = 0.7;
                    Response.Redirect("info.aspx");
                }
                else
                {
                    msg = "<font face='Lucida Calligraphy' size = '30px' color = 'red'> login failed, try again! <font/>";
                }
            }
        }
    }
    public static string Connection()
    {
        return @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\שיר\source\repos\project_CinemaSite\project_CinemaSite\App_Data\Database.mdf;Integrated Security=True";
    }
}

