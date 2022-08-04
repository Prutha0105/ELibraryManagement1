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
    public partial class adminauthormanagement : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //GO button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckMemberExists())
            {
                Response.Write("<Script>alert('Can not add same author. This AuthorId is already exists.')</Script>");
            }
            else
            {
                AddNewAuthor();
            }
        }

        //UDF
        public bool CheckMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                { con.Open(); }
                SqlCommand cmd = new SqlCommand("SELECT * from AuthorMaster where AuthorId='" + TextBox1.Text.Trim() + "';", con);
                // SqlCommand cmd = new SqlCommand("select * from MemberMaster where UserId='" + TextBox8.Text.Trim()+ "')", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;

                }
                else
                {
                    return false;
                }
                con.Close();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void AddNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                { con.Open(); }

                SqlCommand cmd = new SqlCommand("insert into AuthorMaster(AuthorId,AuthorName) values(@author_id,@author_name)", con);
                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
                
                cmd.ExecuteNonQuery();
                con.Close();
                Console.WriteLine("test");
                Response.Write("<script>alert('Author Id added Successfully..!!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        

        void DeleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                { con.Open(); }

                SqlCommand cmd = new SqlCommand("Delete from AuthorMaster where AuthorId='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Console.WriteLine("test");
                Response.Write("<script>alert('Author Id Deleted Successfully..!!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void UpdateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                { con.Open(); }

                SqlCommand cmd = new SqlCommand("update AuthorMaster set AuthorName=@author_name where AuthorId='" + TextBox1.Text.Trim() + "'", con);
                
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Console.WriteLine("test");
                Response.Write("<script>alert('Author Id Updated Successfully..!!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        //Update button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckMemberExists())
            {
                UpdateAuthor();
            }
            else
            {
                Response.Write("<script>alert('Author Id not exists. Add Author first then update.!!');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckMemberExists())
            {
                DeleteAuthor();
            }
            else
            {
                Response.Write("<script>alert('Author Id not exists. Add Author first then delete.!!');</script>");
            }
        }
    }
}