using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;
using AutocompleteMenuNS;
using MySql.Data.MySqlClient;

namespace Tester
{
    public partial class DynamicTooltipSample : Form
    {
        string connectionString = @"Server=localhost;Database=bookdb;Uid=root;Pwd=00000000;";
        DataTable dtDictionnaireVisit = new DataTable();

        public DynamicTooltipSample()
        {
            InitializeComponent();
        }

        private void DynamicTooltipSample_Load(object sender, EventArgs e)
        {
            GetDictionnaireVisit();
        }

        void GetDictionnaireVisit()
        {
            using (MySqlConnection mysqlCon = new MySqlConnection(connectionString))
            {
                mysqlCon.Open();
                MySqlDataAdapter sqlDa = new MySqlDataAdapter("DictionnaireVisitViewAll", mysqlCon);
                sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                sqlDa.Fill(dtDictionnaireVisit);

                //foreach (DataRow row in dtDictionnaireVisit.Rows)
                //{
                //    autocompleteMenu1.AddItem(row[1].ToString());
                //}
            }


            var items = new List<AutocompleteItem>();

            foreach (DataRow row in dtDictionnaireVisit.Rows)
            {
                items.Add(new AutocompleteItem(row[1].ToString()));
            }

            //set as autocomplete source
            autocompleteMenu1.SetAutocompleteItems(items);
        }

        private void autocompleteMenu1_Hovered(object sender, HoveredEventArgs e)
        {
            if (e.Item != null)
            {
                DataRow[] rows = dtDictionnaireVisit.Select("nom = '" + e.Item + "'");

                e.Item.ToolTipTitle = "Description";
                e.Item.ToolTipText = rows[0]["memo"].ToString();
            }
        }
    }
}
