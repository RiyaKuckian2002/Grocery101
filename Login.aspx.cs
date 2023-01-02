using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Cookies["Grocery-uname"] != null)
            {
                TextBox1.Text = Request.Cookies["Grocery-uname"].Value;
            }
            if (Request.Cookies["Grocery-pwd"] != null)
            {
                TextBox2.Attributes.Add("value", Request.Cookies["Grocery-pwd"].Value);

            }

            if (Request.Cookies["Grocery-uname"] != null && Request.Cookies["Grocery-pwd"] != null)
            {
                CheckBox1.Checked = true;
            }

        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        String mycon = "Data Source=DESKTOP-C3QB8RV\\SQLEXPRESS01;Initial Catalog=OnlineGrocery;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from Login where name='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String uname;
        String pass;
        if (ds.Tables[0].Rows.Count > 0)
        {
            uname = ds.Tables[0].Rows[0]["name"].ToString();
            pass = ds.Tables[0].Rows[0]["password"].ToString();

            scon.Close();
            if (uname == TextBox1.Text && pass == TextBox2.Text)
            {
                Session["name"] = uname;
                if (CheckBox1.Checked == true)
                {
                    Response.Cookies["Grocery-uname"].Value = TextBox1.Text;
                    Response.Cookies["Grocery-pwd"].Value = TextBox2.Text;
                    Response.Cookies["Grocery-uname"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["Grocery-pwd"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {
                    Response.Cookies["Grocery-uname"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Grocery-pwd"].Expires = DateTime.Now.AddDays(-1);
                }
                Response.Redirect("Loginmain.aspx");
            }
            else
            {
                Label2.Text = "Invalid Username or Password - Relogin with Correct Username Password";
            }
        }
        else
        {
            Label2.Text = "Invalid Username or Password - Relogin with Correct Username Password";
        }

    }
    }
