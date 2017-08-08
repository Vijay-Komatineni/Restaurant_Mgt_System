using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Receipt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string rsvd_time = Request.QueryString["rsvd_time"];
        String fname="", lname="";
        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("SELECT CUST_FNAME,CUST_LNAME FROM CUSTOMER C JOIN FOOD_ORDER F ON C.CUST_ID= F.CUST_ID WHERE F.CUST_ID=" + Int32.Parse(Session["customer_id"].ToString()), con);
        SqlDataReader reader = cmd1.ExecuteReader();
        while(reader.Read())
        {
            fname=reader["CUST_FNAME"].ToString();
            lname=reader["CUST_LNAME"].ToString();
        }
        reader.Close();
        cus_name.Text = fname +" "+ lname;
       String addr = "";
        int num = 0;
        
        SqlCommand cmd2 = new SqlCommand("SELECT RESTAURANT_ADDR, RESTAURANT_CONTACT_NUM FROM RESTAURANT R INNER JOIN RESERVATION RV ON R.RESTAURANT_ID=RV.RESTAURANT_ID INNER JOIN FOOD_ORDER FO ON RV.RSVD_TIME= FO.RSVD_TIME WHERE FO.RSVD_TIME='"+rsvd_time+"'", con);
        SqlDataReader reader1 = cmd2.ExecuteReader();
        while (reader1.Read())
        {
            addr = reader1.GetString(0);
            num = reader1.GetInt32(1);
        }
        reader1.Close();
        rest_addr.Text = addr;
        con_num.Text = num.ToString();

        
            SqlCommand command = new SqlCommand();
            command.Connection = con;
            command.CommandType = CommandType.Text;
        
        command.CommandText = "SELECT T.TABLE_NO FROM TABLE_SIZE T INNER JOIN RSVD_TAB RT ON T.TABLE_ID = RT.TABLE_ID INNER JOIN FOOD_ORDER FO ON RT.RSVD_TIME = FO.RSVD_TIME WHERE FO.RSVD_TIME='" + rsvd_time + "'";
            

            using (SqlDataReader sdr = command.ExecuteReader())
            {

            GridView1.DataSource = sdr;
            GridView1.DataBind();
            }


        SqlCommand command1 = new SqlCommand();
        command1.Connection = con;
        command1.CommandType = CommandType.Text;
       
        command1.CommandText= " SELECT FOOD_NAME FROM FOOD_ITEMS FI INNER JOIN FOOD_ORDER FR ON FI.FOOD_ID = FR.FOOD_ID WHERE FR.RSVD_TIME='"+rsvd_time+"'";

        using (SqlDataReader sdr1 = command1.ExecuteReader())
        {

            GridView2.DataSource = sdr1;
            GridView2.DataBind();
        }

        
        SqlCommand command2 = new SqlCommand("SELECT SUM(ITEM_TOTALPRICE) as price, (SUM( ITEM_TOTALPRICE)*0.085) as price1 FROM FOOD_ORDER WHERE RSVD_TIME='"+rsvd_time+"'", con);
        SqlDataReader sdr2 = command2.ExecuteReader();
        string sub = null;
        string taxPrice = null;
        while (sdr2.Read())
        {
            sub = (sdr2["price"].ToString());
            taxPrice = (sdr2["price1"]).ToString();
        }
        sub_price.Text = "$ " + sub;
        tax.Text = "$ " + taxPrice;
        tot_price.Text = "$ "+(double.Parse(sub) + double.Parse(taxPrice)).ToString();



    }




    protected void Logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("logout.aspx");
    }


}