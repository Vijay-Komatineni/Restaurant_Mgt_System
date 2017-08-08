using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void dish_type(object sender, EventArgs e)
    {
    
            SqlConnection conn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string query;
            try
            {
                query = "SELECT FOOD_ID, FOOD_NAME FROM FOOD_ITEMS where FOOD_TYPE='" + food_type.SelectedValue + "'";
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    dish_list.DataSource = ds;
                    dish_list.DataTextField = "FOOD_NAME";
                    dish_list.DataValueField = "FOOD_ID";
                    dish_list.DataBind();
                }
                else
                {
                    Response.Write("No Results found");

                }

            }
            catch (Exception ex)
            {
                Console.WriteLine("<br>" + ex);
            }
            finally
            {
                conn.Close();
            }
        
       
    }

    protected void Order_food_Click(object sender, EventArgs e)
    {
        Boolean selected = false;
        Page.Validate();
        if (Page.IsValid)
        {
            foreach (ListItem item in dish_list.Items)
            {
                if (item.Selected)
                {
                    selected = true;
                    break;
                }
            }
            if (selected)
            {
                SqlConnection connection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                connection.Open();
                int count = 0;
                for (int i = 0; i < dish_list.Items.Count; i++)
                {
                    if (dish_list.Items[i].Selected)
                    {
                        count++;
                    }
                }


                int j = 0;
                int[] dish_id = new int[count];
                int[] dish_cost = new int[count];
                int[] dish_totalcost = new int[count];
                foreach (ListItem item in dish_list.Items)
                {
                    if (item.Selected)
                    {
                        dish_id[j] = Int32.Parse(item.Value);
                        j++;
                    }
                }


                for (int m = 0, n = 0; m < dish_id.Length; m++, n++)
                {
                    SqlCommand cmd_dish = new SqlCommand("SELECT FOOD_COST FROM FOOD_ITEMS WHERE FOOD_ID=" + dish_id[m], connection);
                    SqlDataReader reader = cmd_dish.ExecuteReader();
                    reader.Read();
                    dish_cost[n] = reader.GetInt32(0);
                    reader.Close();
                }

                for (int p = 0, q = 0; p < dish_cost.Length; p++, q++)
                {
                    dish_totalcost[q] = 1 * dish_cost[p];
                }
                string rsvd_time = Request.QueryString["rsvd_time"];
                DateTime datetime = DateTime.Parse(rsvd_time);
                for (int r = 0; r < dish_id.Length; r++)
                {


                    SqlCommand cmd5 = new SqlCommand("INSERT INTO FOOD_ORDER (ITEM_QUANTITY, ITEM_TOTALPRICE, CUST_ID,FOOD_ID,RSVD_TIME) VALUES (@QUAN,@PRICE,@CUSID,@FOODID,@TIME)", connection);
                    cmd5.Parameters.AddWithValue("@QUAN", 1);
                    cmd5.Parameters.AddWithValue("@PRICE", dish_totalcost[r]);
                    cmd5.Parameters.AddWithValue("@CUSID", Int32.Parse(Session["customer_id"].ToString()));
                    cmd5.Parameters.AddWithValue("@FOODID", dish_id[r]);
                   
                    cmd5.Parameters.AddWithValue("@TIME", datetime);

                    cmd5.ExecuteNonQuery();

                }

                
                Response.Redirect("Receipt.aspx?rsvd_time="+rsvd_time);
            }
            else
            {
                Label1.Text = "Please select your dishes";
            }
            }
    }
}