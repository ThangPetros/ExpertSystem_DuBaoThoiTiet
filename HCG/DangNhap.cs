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
    public partial class DangNhap : Form
    {
        DataContext db = new DataContext();
        public DangNhap()
        {
            InitializeComponent();
        }


        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                CheckAccount();
            }
            catch (Exception ERR)
            {
                MessageBox.Show(ERR.Message);
            }
        }

        private void CheckAccount()
        {
            var logins = from x in db.LogIns select x;

            foreach (var tk in logins)
            {
                if (textBoxTenDN.Text == tk.TenDN && textBoxMk.Text == tk.Mk)
                {
                    DangNhapToForm1(tk.Role);
                    break;
                }
            }
        }

        string RemoveSpace(string ch)
        {
            return string.Join("", ch.Split(default(string[]), StringSplitOptions.RemoveEmptyEntries));
        }
        private void DangNhapToForm1(string role)
        {
            ShowNewForm1(role);
        }

        private void ShowNewForm1(string role = "user")
        {
            this.Hide();
            Form1 f = new Form1(role);
            DialogResult rs = f.ShowDialog();
            if (rs == DialogResult.OK)
            {
                this.Show();
                CleanText();
            }
            else if (rs == DialogResult.Cancel)
                this.Dispose();
        }

        private void CleanText()
        {
            textBoxTenDN.Text = string.Empty;
            textBoxMk.Text = string.Empty;
        }

        private void DangNhap_Load(object sender, EventArgs e)
        {

        }
    }
}
