using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Dtabase_Connectivity
{
    public partial class Database_Connectivity_MySQL : System.Web.UI.Page
    {
        private void LoadStudentData()
        {
            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["MySqlCon"].ConnectionString;

                using (MySqlConnection conn = new MySqlConnection(connStr))
                {
                    string query = "SELECT * FROM student";
                    MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    StudentGrid.DataSource = dt;
                    StudentGrid.DataBind();
                }
            }
            catch (Exception ex)
            {
                result.Text = ex.Message;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 2. Call your function here so it loads the data on first visit
                LoadStudentData();
            }
        }

    }
}