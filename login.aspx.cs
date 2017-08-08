using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        Page.Validate();
        if (Page.IsValid)
        {
            string emailID = email.Text.ToLower();
            string pwd = password.Text;

            Boolean authorized = false;
            Dictionary<string,string> dictionary = new Dictionary<string, string>();
            SqlConnection con = new SqlConnection(@"Data Source=PAVANROHIT;Initial Catalog=RestaurantSystem;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT CUST_EMAIL_ID, CUST_PASSWORD FROM CUSTOMER", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                dictionary.Add(reader.GetString(0),reader.GetString(1));
            }
            reader.Close();
            
            foreach (KeyValuePair<string,string> pair in dictionary)
            {
                if (emailID.Equals(pair.Key)&&pwd.Equals(pair.Value))
                {
                    authorized = true;
                    break;
                }
            }

            if (authorized)
            {
                SqlCommand cmd1 = new SqlCommand("Select CUST_ID FROM CUSTOMER WHERE CUST_EMAIL_ID= @emailID", con);
                cmd1.Parameters.AddWithValue("@emailID", emailID);
                SqlDataReader reader1 = cmd1.ExecuteReader();
                reader1.Read();
                Session["customer_id"] = reader1.GetInt32(0);
                reader1.Close();
                Response.Redirect("reservation.aspx");
            }
            else
            {
                login_fail.Text = "Incorrect Email Id or Password!";
            }

            con.Close();



        }//endOuterIf
    }
}