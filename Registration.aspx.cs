using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String query = "insert into Registrations(Username,Email,Age,Phone_no,Gender,Password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" +  TextBox6.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "','" + TextBox4.Text + "')" ;
        String mycon = "Data Source=DESKTOP-C3QB8RV\\SQLEXPRESS01;Initial Catalog=OnlineGrocery;Integrated Security=True";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label10.Text = "New Registration Successfully Saved - Thanks For Registration";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox6.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
               
                
            
    }
    public Boolean checkusername(String username)
    {
        Boolean userstatus;
        String mycon = "Data Source=DESKTOP-C3QB8RV\\SQLEXPRESS01;Initial Catalog=OnlineGrocery;Integrated Security=True";
        String myquery = "Select * from Registrations where Email='" + TextBox2.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            userstatus = false;
        }
        else
        {
            userstatus = true;

        }
        con.Close();

        return userstatus;

}

}