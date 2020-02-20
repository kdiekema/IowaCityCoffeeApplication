using System;
using System.Data;
using System.Data.SqlClient;

namespace icCoffee.Data
{
    public static class dbConnection
    {
        private static String connectionString = "Data Source=bais-mssql.database.windows.net; Initial Catalog=f19-msci3120; User ID=f19-msci3120-usr; Password=6S39eSBe8v5uGeamDQzyWDl8yKu6wBkQNXlNXcgcQHG; Connect Timeout=30; Encrypt=True; TrustServerCertificate=False; ApplicationIntent=ReadWrite; MultiSubnetFailover=False";
        public static void ExecuteSelectQuery(string query, ref DataTable dt)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.Fill(dt);
            con.Close();
        }

        public static void ExecuteInsertQuery(string query)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}