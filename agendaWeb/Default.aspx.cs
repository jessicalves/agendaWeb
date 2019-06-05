using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agendaWeb
{
    public partial class _Default : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public class Evento
        {
            public int id { get; set; }
            public string titulo { get; set; }
            public string data { get; set; }
            public string duracao { get; set; }
        }

        public static List<Evento> eventos = new List<Evento>();
        public DataTable ConvertToDataTable<eventos>(IList<eventos> data)
        {
            PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(typeof(eventos));
            DataTable table = new DataTable();
            foreach (PropertyDescriptor prop in properties)
                table.Columns.Add(prop.Name, Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType);
            foreach (eventos item in data)
            {
                DataRow row = table.NewRow();
                foreach (PropertyDescriptor prop in properties)
                    row[prop.Name] = prop.GetValue(item) ?? DBNull.Value;
                table.Rows.Add(row);
            }
            return table;         
        }

    }
}