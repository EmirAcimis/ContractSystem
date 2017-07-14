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
    public partial class View : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string Contractid = Request.QueryString["ContractId"];
            try
            {
                string strConnection = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ContractDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                SqlConnection sqlConnection = new SqlConnection(strConnection);
                sqlConnection.Open();
                string query = "SELECT * FROM ContractTable WHERE ContractId = '" +Contractid+ "'";
                SqlCommand cmd = new SqlCommand(query, sqlConnection);
                SqlDataReader reader;
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    if (!IsPostBack)
                    {
                        IDBox.Text = reader["ContractId"].ToString();
                        TitleBox.Text = reader["Title"].ToString();
                        TypeBox.Text = reader["CType"].ToString();
                        PartyNameBox.Text = reader["PartyName"].ToString();
                        StatusBox.Text = reader["CStatus"].ToString();
                        DepartmentBox.Text = reader["Department"].ToString();
                        EffectiveBox.Text = reader["EffectiveDate"].ToString();
                        ExpiryBox.Text = reader["ExpiryDate"].ToString();
                        CommentBox.Text = reader["Comment"].ToString();
                    }
                    
                }
                sqlConnection.Close();
            }
            catch(SqlException ex)
            {
                
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ContractId"];
            try
            {
                string strConnection = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ContractDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                SqlConnection sqlConnection = new SqlConnection(strConnection);
                sqlConnection.Open();
                string updateQuery = "UPDATE ContractTable SET Title = '"+TitleBox.Text+ "', CType = '" + TypeBox.Text + "' , PartyName = '" + PartyNameBox.Text + "', CStatus = '" + StatusBox.Text + "', Department = '" + DepartmentBox.Text + "', EffectiveDate = '" + DropDownList2.Text + "."+DropDownList1.Text+"."+DropDownList3.Text+"', ExpiryDate = '" + DropDownList5.Text + "."+DropDownList4.Text+"."+DropDownList6.Text+"', Comment = '" + CommentBox.Text + "' WHERE ContractId = '" + id+"'";
                SqlCommand cmd = new SqlCommand(updateQuery, sqlConnection);
                cmd.ExecuteReader();
                Response.Redirect("Search.aspx");
            }
            catch(SqlException ex)
            {
                
            }
        }

    }
}