using System;
using System.Data;
using System.Data.SqlClient;

public partial class Default5 : System.Web.UI.Page
{
    public string firstname, lastname, username, password;
    public bool gender = false;
    public string msg_username_is_exist = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(Connection());
        connection.Open();
        if (IsPostBack)
        {
            firstname = Request.Form["firstname"];
            lastname = Request.Form["surename"];
            username = Request.Form["username"];
            password= Request.Form["password"];
            if (Request.Form["gender"] == "male")
                gender = true;

            string sql = "SELECT * FROM Registeration";
            SqlCommand cmd = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            string sql1="";
            int check = 0;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DataRow dr = ds.Tables[0].Rows[i];
                if (username == dr["Username"].ToString().Trim())
                    check++;
            }
            if (check == 0)
            {
                sql1 = "INSERT INTO Registeration VALUES ('" + username + "','" + password + "','" + firstname + "','" + lastname + "','" + gender + "','" + false + "')";
                SqlDataAdapter adapter1 = new SqlDataAdapter();
                adapter.InsertCommand = new SqlCommand(sql1, connection);
                adapter.InsertCommand.ExecuteNonQuery();
                Response.Redirect("sign_in.aspx");
            }
            else
                msg_username_is_exist = "<marquee scrollamount='20px'><font face='Lucida Calligraphy' size = '30px' color = 'red'> username is already exist! <font/><marquee/>";
            
                
        }
        connection.Close();
    }
    public static string Connection()
    {
        return @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\שיר\source\repos\project_CinemaSite\project_CinemaSite\App_Data\Database.mdf;Integrated Security=True";
    }
}