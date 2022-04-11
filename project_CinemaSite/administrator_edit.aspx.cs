using System;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    string user, name, surname, password;
    bool admin;
    int id;
    string user_edit, name_edit, surname_edit, password_edit;
    bool admin_edit;
    string id_edit;
    public string msg = "";
    DataSet ds;
    SqlDataAdapter dataAdapter;
    SqlConnection connection = new SqlConnection(Connection());
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["Admin"] != "1")
        {
            Response.Redirect("sign_in.aspx");
        }
        connection.Open();
        cmd = new SqlCommand("Select * from Registeration", connection);
        ds = new DataSet();
        dataAdapter = new SqlDataAdapter(cmd);
        dataAdapter.Fill(ds);
        rptUsers.DataSource = ds;
        rptUsers.DataBind();
        connection.Close();
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];
            user = dr["Username"].ToString().Trim();
            password = dr["Password"].ToString().Trim();
            name = dr["Name"].ToString().Trim();
            surname = dr["Surname"].ToString().Trim();
            admin = (bool)dr["Admin"];
            id = (int)dr["Id"];
        }
        if (IsPostBack)
        {
            id_edit = Request.Form["id"];
            if (Request.Form["admin"] == "admin")
                admin_edit = true;
            name_edit = Request.Form["firstname"];
            surname_edit = Request.Form["surename"];
            user_edit = Request.Form["username"];
            password_edit = Request.Form["password"];
            connection.Open();
            string sql = "SELECT * FROM Registeration";
            SqlCommand cmd = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            string sql1 = "";
            int check_id = 0;
            int check_user = 0;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DataRow dr = ds.Tables[0].Rows[i];
                if (id_edit == dr["Id"].ToString().Trim())
                    check_id++;
                if (user_edit == dr["Username"].ToString().Trim())
                {
                    if (id_edit != dr["Id"].ToString().Trim())
                        check_user++;
                }
            }
            if (check_id != 0 && check_user == 0)
            {
                sql1 = "UPDATE Registeration SET Username='" + user_edit + "', Password='" + password_edit + "', Name='" + name_edit + "', Surname='" + surname_edit + "', Admin='" + admin_edit + "' WHERE Id='" + id_edit + "' ";
                adapter.UpdateCommand = new SqlCommand(sql1, connection);
                adapter.UpdateCommand.ExecuteNonQuery();
                Response.Redirect("administrator_edit.aspx");
            }
            else if (check_id == 0 && check_user == 0)
                msg = "There is no id like this.";
            else
                msg = "Username already exist";
            connection.Close();
        }
    }
    public static string Connection()
    {
        return @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\שיר\source\repos\project_CinemaSite\project_CinemaSite\App_Data\Database.mdf;Integrated Security=True";
    }
}