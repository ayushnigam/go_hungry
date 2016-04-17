using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class TableReservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = "You chose the Date:" + Calendar1.SelectedDate.ToLongDateString();
        DropDownList1.Visible = true;
        Label2.Visible = true;
        DropDownList2.Visible = true;
        DropDownList3.Visible = true;
        Button1.Visible = true;
        Label3.Visible = true;
        TextBox1.Visible = true;
        Label4.Visible = true;
        TextBox2.Visible = true;
        Label5.Visible = true;
        TextBox3.Visible = true;
        Label6.Visible = true;
        Label8.Visible = false;


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        //define the query
        string insertSql = "INSERT INTO Reservation (ReservationId, TableNo, Time, People, Name, Date, Description)";
        insertSql += "VALUES (";
        insertSql += "@ReservationId, @TableNo, @Time, ";
        insertSql += "@People, @Name, ";
        insertSql += "@Date, @Description)";

        //instantiate the connection
        SqlConnection con = new SqlConnection(connectionString);

        //instantiate a command
        SqlCommand cmd = new SqlCommand(insertSql, con);

        // Add the parameters.
        cmd.Parameters.AddWithValue("@ReservationId", TextBox3.Text);
        cmd.Parameters.AddWithValue("@TableNo", DropDownList3.SelectedValue);
        cmd.Parameters.AddWithValue("@Time", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@People", DropDownList2.SelectedValue);
        cmd.Parameters.AddWithValue("@Description", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Date", Label1.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);


        //create a variable to see how many rows were affected
        int added = 0;
        try
        {
            con.Open();
            added = cmd.ExecuteNonQuery();
            lblResults.Text = added.ToString() + " record inserted.";
        }

        //catch (Exception err)
        //{
        //    lblResults.Text = "Error inserting author. ";
        //    lblResults.Text += err.Message;
        //}

        finally
        {
            con.Close();
        }




        //string updateSql;
        //updateSql = "UPDATE Reservation SET ";

        //updateSql += "ReservationId=@ReservationId, TableNo=@TableNo, Time=@Time, ";
        //updateSql += "People=@People, Name=@Name, ";
        //updateSql += "Date=@Date, Description=@Description";


        //SqlConnection con = new SqlConnection(connectionString);
        //SqlCommand cmd = new SqlCommand(updateSql, con);
        
        //// Add the parameters.
        //cmd.Parameters.AddWithValue("@ReservationId", TextBox3.Text);
        //cmd.Parameters.AddWithValue("@TableNo", DropDownList3.SelectedValue);
        //cmd.Parameters.AddWithValue("@Time", DropDownList1.SelectedValue);
        //cmd.Parameters.AddWithValue("@People", DropDownList2.SelectedValue);
        //cmd.Parameters.AddWithValue("@Description", TextBox1.Text);
        //cmd.Parameters.AddWithValue("@Date", Label1.Text);
        //cmd.Parameters.AddWithValue("@Name", TextBox2.Text);


        //// Try to open database and execute the update.
        //int updated = 0;
        //try
        //{
        //    con.Open();
        //    updated = cmd.ExecuteNonQuery();
        //    lblResults.Text = updated.ToString() + " record updated.";
        //}
        ////catch (Exception err)
        ////{
        ////    lblResults.Text = "Error updating author. ";
        ////    lblResults.Text += err.Message;
        ////}
        //finally
        //{
        //    con.Close();
        //}
        //// If the update succeeded, refresh the author list.
        ////if (updated > 0)
        ////{
        ////    FillAuthorList();
        ////}

        GridView1.DataBind();
        DropDownList1.Visible = false;
        Label2.Visible = false;
        DropDownList2.Visible = false;
        DropDownList3.Visible = false;
        Button1.Visible = false;
        Label3.Visible = false;
        TextBox1.Visible = false;
        Label4.Visible = false;
        TextBox2.Visible = false;
        Label5.Visible = false;
        TextBox3.Visible = false;
        Label6.Visible = false;
        Label8.Visible = true;


    }




}