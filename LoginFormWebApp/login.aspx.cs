using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LoginFormWebApp
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=asplogin;Integrated Security=True;TrustServerCertificate=True");
            conn.Open(); //this will open the connection
            string loginQuery = "SELECT COUNT(*) FROM Login WHERE username=@username AND password=@password";
            SqlCommand cmd = new SqlCommand(loginQuery, conn); //this will execute our query
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            int count = (int)cmd.ExecuteScalar(); //this will execute the query and if matches with db then written count
            conn.Close(); //it will close the connection
            if(count > 0)
            {
                Response.Write("<script>alert('login success');</script>");
            }
            else
            {
                Response.Write("<script>alert('login failed');</script>");
            }
        }
    }
}