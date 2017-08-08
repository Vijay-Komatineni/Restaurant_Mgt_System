using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;



public partial class reservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection connection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Dictionary<int, DateTime> details = new Dictionary<int, DateTime>();

        //Check if RSVD_TAB is empty
        string query = "select TABLE_ID, RSVD_TIME from RSVD_TAB";
        try
        {
            SqlCommand command = new SqlCommand(query,connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                details.Add(reader.GetInt32(0),reader.GetDateTime(1));
            }
            reader.Close();

            //SET THE STATUS OF THOSE TABLES TO 'A' WHOSE RESERVATION PERIOD HAS BEEN MORE THAN 24 HOURS (AVAILABLE) and DELETE THEIR ENTRY IN RSVD_TAB (RESERVED TABLES table)
            foreach (KeyValuePair<int, DateTime> pair in details)
            {

                int id = pair.Key;
                DateTime past = pair.Value;
                DateTime now = DateTime.Now;
                int hours = (now - past).Hours;

                if (hours > 24)
                {
                    string setStatusQuery = "UPDATE TABLE_SIZE SET STATUS_CODE='A' WHERE TABLE_ID = @TableId";
                    SqlCommand command1 = new SqlCommand(setStatusQuery, connection);
                    command1.Parameters.Add("@TableId", SqlDbType.Int);
                    command1.Parameters["@TableId"].Value = id;
                    command1.ExecuteNonQuery();

                    string deleteQuery = "DELETE FROM RSVD_TAB WHERE TABLE_ID = @TableId";
                    SqlCommand command2 = new SqlCommand(deleteQuery, connection);
                    command2.Parameters.Add("@TableId", SqlDbType.Int);
                    command2.Parameters["@TableId"].Value = id;
                    command2.ExecuteNonQuery();
                }
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine("<br>" + ex);
        }
        finally
        {
            connection.Close();
        }

    }

 
    protected void check_available(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string query;
        int numPpl = Int32.Parse((num_ppl.Text).ToString());
        int restaurantID = Int32.Parse(restaurant_list.SelectedValue);
        try
        {
            if (numPpl == 1)
            {
                query = "SELECT TABLE_LOC,TABLE_ID FROM TABLE_SIZE where TABLE_CAP=2 AND RESTAURANT_ID=" + restaurantID + "AND STATUS_CODE='A'";
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    table_list.DataSource = ds;
                    table_list.DataTextField = "TABLE_LOC";
                    table_list.DataValueField = "TABLE_ID";
                    table_list.DataBind();
                }
                else
                {
                    Response.Write("No Results found");

                }
            }
            else {
                query = "SELECT TABLE_LOC,TABLE_ID FROM TABLE_SIZE where TABLE_CAP<=" + numPpl + "AND RESTAURANT_ID=" + restaurantID + "AND STATUS_CODE='A'";
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    table_list.DataSource = ds;
                    table_list.DataTextField = "TABLE_LOC";
                    table_list.DataValueField = "TABLE_ID";
                    table_list.DataBind();
                }
                else
                {
                    Response.Write("No Results found");
                }
            }
        }
        catch (Exception ex)
            {
                Console.WriteLine("<br>"+ex);
            }
        finally
        {
            con.Close();
        }

            }


    protected void reserve_Click(object sender, EventArgs e)
    {
        Boolean selected = false;
        Page.Validate();
        if (Page.IsValid)
        {
            foreach (ListItem item in table_list.Items)
            {
                if(item.Selected)
                {
                    selected = true;
                    break;
                }
            }
                if (selected)
            {
                int count = 0;
                for (int i = 0; i < table_list.Items.Count; i++)
                {
                    if (table_list.Items[i].Selected)
                    {
                        count++;
                    }
                }

               
            int[] id = new int[count];
                int b = 0;
                foreach (ListItem item in table_list.Items)
                { 
                    if (item.Selected)
                    { 
                        id[b] = Int32.Parse(item.Value);
                        b++;
                }
            }
               

            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();  
            SqlCommand cmd = new SqlCommand("INSERT INTO RESERVATION (CUST_ID, RESTAURANT_ID, RSVD_TIME) VALUES (@CUSTID,@RESTID,@RSVD_TIME)", con);
            cmd.Parameters.AddWithValue("@CUSTID", Int32.Parse(Session["customer_id"].ToString()));
            cmd.Parameters.AddWithValue("@RESTID", restaurant_list.SelectedValue);
                DateTime rsvd_time = DateTime.Now;
                cmd.Parameters.AddWithValue("@RSVD_TIME", rsvd_time.ToString());
            cmd.ExecuteNonQuery();

            SqlCommand cmd2 = new SqlCommand("SELECT RESERVATION_ID FROM RESERVATION WHERE RSVD_TIME ='"+rsvd_time+"'", con); 
            SqlDataReader reader = cmd2.ExecuteReader();
                while (reader.Read())
                {
                    Session["reservation_id"] = reader.GetInt32(0);
                }
            reader.Close();
                for (int k=0;k < id.Length;k++)
            {
                            
                    SqlCommand cmd3 = new SqlCommand("INSERT INTO RSVD_TAB (RESTAURANT_ID, RESERVATION_ID,CUST_ID, TABLE_ID,RSVD_TIME) VALUES (@RESTID,@RESVID,@CUSID,@TABID,@RSVD_TIME)", con);
                    cmd3.Parameters.AddWithValue("@RESTID", restaurant_list.SelectedValue);
                    cmd3.Parameters.AddWithValue("@RESVID", Int32.Parse(Session["reservation_id"].ToString()));
                    cmd3.Parameters.AddWithValue("@CUSID", Int32.Parse(Session["customer_id"].ToString()));
                    cmd3.Parameters.AddWithValue("@TABID", id[k]);
                    
                    string format = "yyyy-MM-dd-HH:mm:ss";
                    cmd3.Parameters.AddWithValue("@RSVD_TIME", rsvd_time.ToString());
                    cmd3.ExecuteNonQuery();
                }
                foreach (int j in id)
                {
                    SqlCommand cmd1 = new SqlCommand("UPDATE TABLE_SIZE SET STATUS_CODE='R' WHERE TABLE_ID=" + j, con);
                    cmd1.ExecuteNonQuery();
                }

                Response.Redirect("order.aspx?rsvd_time="+rsvd_time);
            }

            else
            {
                Label1.Text = "Please select your table(s)";
            }

        }
            
        }
        }

    

