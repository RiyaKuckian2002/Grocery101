using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddtoCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("ProductName");
            dt.Columns.Add("P_code");
            dt.Columns.Add("amount");
            dt.Columns.Add("ProductImage");
            dt.Columns.Add("cost");
            dt.Columns.Add("totalcost");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = "Data Source=DESKTOP-C3QB8RV\\SQLEXPRESS01;Initial Catalog=OnlineGrocery;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from ShoppingCart where P_code=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["P_code"] = ds.Tables[0].Rows[0]["P_code"].ToString();
                    dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                    
                    dr["amount"] = ds.Tables[0].Rows[0]["amount"].ToString();
                    dr["ProductImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = "Data Source=DESKTOP-C3QB8RV\\SQLEXPRESS01;Initial Catalog=OnlineGrocery;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from ShoppingCart where P_code=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["P_code"] = ds.Tables[0].Rows[0]["P_code"].ToString();
                    dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                    dr["amount"] = ds.Tables[0].Rows[0]["amount"].ToString();
                    dr["ProductImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                    
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }
    }
}