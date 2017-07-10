using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Contract
{
    public partial class Search : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string myQuery;
            string strConnection = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ContractDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection sqlConnection = new SqlConnection(strConnection);
            sqlConnection.Open();
            DataTable dt = new DataTable();

            String a = TextBox1.Text;
            if (a != null)
                myQuery = "SELECT * FROM ContractTable WHERE ContractId LIKE '%" + a + "%' OR  CType LIKE '%" + a + "%' OR PartyName LIKE '%" + a + "%' OR Stage LIKE '%" + a + "%' OR CStatus LIKE '%" + a + "%' OR Risk LIKE '%" + a + "%' OR EffectiveDate LIKE '%" + a + "%' OR ExpiryDate  LIKE '%" + a + "%' OR Comment LIKE '%" + a + "%' ";

            else
                myQuery = "SELECT * FROM ContractTable ";


            SqlCommand cmd = new SqlCommand(myQuery, sqlConnection);

            SqlDataReader reader;

            SqlDataAdapter adapter = new SqlDataAdapter();
            //Open the connection to db

            adapter.SelectCommand = new SqlCommand(myQuery, sqlConnection);
            //execute the query
            reader = cmd.ExecuteReader();
            //Assign the results 
            GridView2.DataSource = reader;

            //Bind the data
           GridView2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Empty
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //EMPTY
        }
    }
}