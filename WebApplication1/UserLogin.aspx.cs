using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class UserLogin : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //user login
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                { con.Open(); }
                SqlCommand cmd = new SqlCommand("select * from MemberMaster where FullName = '" + TextBox1.Text.Trim() + "' AND Password = '" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader da = cmd.ExecuteReader();
                if (da.HasRows)
                {
                    while (da.Read())
                    {
                        Response.Write("<script>alert('" + da.GetValue(8).ToString() + "');</script>");

                    }
             
                }
                else
                {
                    Response.Write("<script>alert('Invalid User');</script>");
                }
                con.Close();
             }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignUppage.aspx");
        }
    }
}