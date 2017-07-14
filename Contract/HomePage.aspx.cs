using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Contract
{
    public partial class HomePage : System.Web.UI.Page
    {
        string value = "";
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                bindData();
            }
        }


        protected void bindData()
        {

            string todayy = DateTime.Today.AddDays(7).ToString("yyyy-MM-dd");
            string todayy2 = DateTime.Today.ToString("yyyy-MM-dd");

            string myquery;
            string connectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ContractDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            myquery = "SELECT [ContractId] ,[Title],[EffectiveDate],[ExpiryDate] FROM[ContractDatabase].[dbo].[ContractTable] WHERE (ExpiryDate <= '" + todayy + "' AND ExpiryDate >= '" + todayy2 + "')";
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(myquery, connection);

            DataSet ds = new DataSet();


            adapter.Fill(ds, "ContractTable");
            if (ds.Tables[0].Rows.Count == 0)
            {
                Label3.Visible = true;
            }

            GridView1.DataSource = ds;
            GridView1.DataBind();


            string myquery2 = "SELECT [ContractId] ,[Title],[EffectiveDate],[ExpiryDate] FROM[ContractDatabase].[dbo].[ContractTable] WHERE ExpiryDate = '" + todayy2 + "'";
            DataTable dt2 = new DataTable();
            SqlDataAdapter adapter2 = new SqlDataAdapter(myquery2, connection);

            DataSet ds2 = new DataSet();


            adapter2.Fill(ds2, "ContractTable");
            if (ds2.Tables[0].Rows.Count == 0)
            { Label4.Visible = true; }

            GridView2.DataSource = ds2;
            GridView2.DataBind();

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
            string myQuery;
            string strConnection = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ContractDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection sqlConnection = new SqlConnection(strConnection);
            sqlConnection.Open();
            value = GridView1.DataKeys[e.RowIndex].Values["ContractId"].ToString();
            myQuery = "DELETE FROM ContractTable WHERE ContractId = '" + value + "'";
            SqlCommand cmd = new SqlCommand(myQuery, sqlConnection);
            cmd.ExecuteNonQuery();
            Response.Redirect("HomePage.aspx");
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            value = GridView1.DataKeys[e.NewSelectedIndex].Values["ContractId"].ToString();
            Response.Redirect("~/View.aspx?ContractId=" + value);

        }
        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string myQuery;
            string strConnection = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ContractDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection sqlConnection = new SqlConnection(strConnection);
            sqlConnection.Open();
            value = GridView2.DataKeys[e.RowIndex].Values["ContractId"].ToString();
            myQuery = "DELETE FROM ContractTable WHERE ContractId = '" + value + "'";
            SqlCommand cmd = new SqlCommand(myQuery, sqlConnection);
            cmd.ExecuteNonQuery();
            Response.Redirect("HomePage.aspx");
        }

        protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            value = GridView2.DataKeys[e.NewSelectedIndex].Values["ContractId"].ToString();
            Response.Redirect("~/View.aspx?ContractId=" + value);

        }
    }


}
