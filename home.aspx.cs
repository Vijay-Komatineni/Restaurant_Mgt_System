using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class home : System.Web.UI.Page
{
    private Boolean valid = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void register_Click(object sender, EventArgs e)
    {
        Page.Validate();
        if(Page.IsValid)
        {
            string emailID = email.Text.ToLower();

            if (available(emailID))
            {
                SqlConnection con = new SqlConnection(@"Data Source=PAVANROHIT;Initial Catalog=RestaurantSystem;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO CUSTOMER (CUST_FNAME, CUST_LNAME, CUST_PHN, CUST_EMAIL_ID,CUST_PASSWORD) VALUES (@FNAME, @LNAME, @PHN, @EMAILID,@PASSWORD)", con);
                cmd.Parameters.AddWithValue("@FNAME", fname.Text);
                cmd.Parameters.AddWithValue("@LNAME", lname.Text);
                cmd.Parameters.AddWithValue("@PHN", mobile.Text);
                cmd.Parameters.AddWithValue("@EMAILID", emailID);
                cmd.Parameters.AddWithValue("@PASSWORD", password.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("RedirectLogin.aspx");
            }
            else
            {
                ID_Availability.Text = "Email ID already taken";
            }
        }
    }

    protected Boolean available(string email)
    {
        Boolean valid = true;
        List<string> list = new List<string>();
        SqlConnection con = new SqlConnection(@"Data Source=PAVANROHIT;Initial Catalog=RestaurantSystem;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT CUST_EMAIL_ID FROM CUSTOMER", con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            list.Add(reader.GetString(0));
        }
        reader.Close();
        con.Close();
        foreach(var id in list)
        {
            if (email.Equals(id))
            {
                valid = false;
            }
        }
        return valid;
    }

    
}