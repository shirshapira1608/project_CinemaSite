using System;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    string user, name, surname, password;
    bool admin;
    int id;
    public string delete_by_id, msg = "";
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
            delete_by_id = Request.Form["id"];
            connection.Open();
            string sql = "SELECT * FROM Registeration";
            SqlCommand cmd = new SqlCommand(sql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            string sql1 = "";
            int check = 0;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DataRow dr = ds.Tables[0].Rows[i];
                if (delete_by_id == dr["Id"].ToString().Trim())
                    check++;
            }
            if (check != 0)
            {
                sql1 = "DELETE FROM Registeration WHERE Id='" + delete_by_id + "'";
                dataAdapter.DeleteCommand = new SqlCommand(sql1, connection);
                dataAdapter.DeleteCommand.ExecuteNonQuery();
                Response.Redirect("administrator_delete.aspx");
            }
            else
            {
                msg = "There is no id like this.";
            }
            connection.Close();

        }
    }
    public static string Connection()
    {
        return @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\שיר\source\repos\project_CinemaSite\project_CinemaSite\App_Data\Database.mdf;Integrated Security=True";
    }
}