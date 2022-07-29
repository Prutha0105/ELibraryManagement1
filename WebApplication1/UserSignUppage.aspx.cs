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
    public partial class UserSignUppage : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            string com = "Select * from State ORDER BY StateName";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "StateName";
            DropDownList1.DataValueField = "StateId";
            DropDownList1.DataBind();
        }
        //sign up button click event start
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Response.Write("<script>alert()</script>");
            if (CheckMemberExists())
            {
                Response.Write("<script>alert('This Memeber is already exists, Please try amother member ID');</script>");

            }
            else
            {
                signUpNewUser();
            }
            
           
        }

        //to check whether member exists or not
        public bool CheckMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                { con.Open(); }
                SqlCommand cmd = new SqlCommand("SELECT * from MemberMaster where UserId='" + TextBox8.Text.Trim() + "';", con);
               // SqlCommand cmd = new SqlCommand("select * from MemberMaster where UserId='" + TextBox8.Text.Trim()+ "')", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >=1)
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
        //user defined method
        void signUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                { con.Open(); }

                SqlCommand cmd = new SqlCommand("insert into MemberMaster(FullName,DOB,ContactNumber,Email,State,City,Pincode,Address,UserId,Password,AccountStatus) values(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);
                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Console.WriteLine("test");
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}