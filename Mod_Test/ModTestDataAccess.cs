using System;
using System.Data.SqlClient;
using System.Collections.Generic;

namespace Mod_Test
{
    public class ModTestData
    {
        public long Dividend { get; set; }
        public long Divisor { get; set; }
        public int ExpectedResult { get; set; }
    }

    public class ModTestDataAccess
    {
        private string _connectionString = "Data Source=DESKTOP-5G1LCV1;Initial Catalog=ModTestDB;Integrated Security=True;Trust Server Certificate=True"; 

        public List<ModTestData> GetTestData()
        {
            List<ModTestData> testDataList = new List<ModTestData>();

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                connection.Open();
                string query = "SELECT Dividend, Divisor, ExpectedResult FROM ModTestData";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        ModTestData data = new ModTestData
                        {
                            Dividend = reader.GetInt64(0),
                            Divisor = reader.GetInt64(1),
                            ExpectedResult = reader.GetInt32(2)
                        };
                        testDataList.Add(data);
                    }
                }
            }

            return testDataList;
        }
    }
}
