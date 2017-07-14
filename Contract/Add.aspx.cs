using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Contract
{
    public partial class Add : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                string strConnection = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ContractDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                SqlConnection sqlConnection = new SqlConnection(strConnection);
                sqlConnection.Open();
                string myQuery = "INSERT INTO ContractTable (Title, CType, PartyName, CStatus, Department, EffectiveDate, ExpiryDate, Comment) VALUES ( '" + TitleBox.Text + " ' ,'" + TypeBox.Text + " ' ,'" + PartyNameBox.Text + " ','" + StatusBox.Text + " '  ,'" + DepartmentBox.Text + " ' , '" +DropDownList2.Text+ "."+ DropDownList1.Text+"."+DropDownList3.Text+" ', ' " + DropDownList5.Text + "." +DropDownList4.Text+ "." +DropDownList6.Text+ " ','  " + CommentBox.Text + " ')";
                SqlCommand cmd = new SqlCommand(myQuery, sqlConnection);
                cmd.ExecuteNonQuery();
                Response.Redirect("HomePage.aspx");

            }
            catch (SqlException ex)
            {
                Response.Redirect("Add.aspx");
                Response.Write("There is an error on connection or sql query");
                ex.Errors.ToString();

            }
        }
    }
}


