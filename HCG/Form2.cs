using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HCG
{
    public partial class Form2 : Form
    {
        DataContext db = new DataContext();
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            GetDataFromSource();
        }

        private void GetDataFromSource()
        {
            this.dataGridViewAll.DataSource = from x in db.DataContents select new { x.STT, x.IdV, x.IdN, x.IdD, x.IdG, x.IdA, x.IdT };
            this.dataGridViewAll.Columns[0].Width = 30;
            for (int col = 1; col < dataGridViewAll.Columns.Count - 1; col++)
            {
                dataGridViewAll.Columns[col].Width = 65;
            }
            this.dataGridViewAll.Columns[dataGridViewAll.Columns.Count - 1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

            this.dataGridViewA.DataSource = from x in db.ApSuats select x;
            this.dataGridViewA.Columns[0].Width = 30;
            this.dataGridViewA.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

            this.dataGridViewG.DataSource = from x in db.Gios select x;
            this.dataGridViewG.Columns[0].Width = 30;
            this.dataGridViewG.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

            this.dataGridViewN.DataSource = from x in db.NhietDos select x;
            this.dataGridViewN.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewN.Columns[0].Width = 30;

            this.dataGridViewV.DataSource = from x in db.VungKhiHaus select x;
            this.dataGridViewV.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewV.Columns[0].Width = 30;

            this.dataGridViewT.DataSource = from x in db.ThoiTiets select x;
            this.dataGridViewT.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewT.Columns[0].Width = 30;

            this.dataGridViewD.DataSource = from x in db.DoAms select x;
            this.dataGridViewD.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewD.Columns[0].Width = 30;

            this.dataGridViewRule.DataSource = from x in db.Rules select x;
            this.dataGridViewRule.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewRule.Columns[0].Width = 30;
            this.dataGridViewRule.Columns[1].Width = 100;
        }

        private void buttonExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            CodeHCG.ThuatToanID3 id3 = new CodeHCG.ThuatToanID3();
            id3.ID3();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            CodeHCG.ThuatToanID3 id3 = new CodeHCG.ThuatToanID3();
            id3.DeleteTapLuat();
        }
    }
}
