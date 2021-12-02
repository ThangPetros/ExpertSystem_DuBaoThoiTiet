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

    public partial class Form1 : Form
    {
        List<string> _RoleName = new List<string> { "admin", "user" };
        string _Role;
        DataContext db = new DataContext();
        CodeHCG.ThuatToanID3 id3;
        public Form1()
        {
            InitializeComponent();

        }
        public Form1(string role)
        {
            InitializeComponent();
            _Role = role.ToLower();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            GetDataFromSource();
            GenerateRules();
        }

        private void GenerateRules()
        {
            var rules = from x in db.Rules select x;
            RunID3();
        }

        void RunID3()
        {
            id3 = new CodeHCG.ThuatToanID3();
            id3.ID3();
        }

        private void GetDataFromSource()
        {
            this.comboBoxKhiHau.DataSource = from x in db.VungKhiHaus select x;
            this.comboBoxKhiHau.DisplayMember = "TenV";
            this.comboBoxKhiHau.ValueMember = "MaV";

            this.comboBoxApSuat.DataSource = from x in db.ApSuats select x;
            this.comboBoxApSuat.DisplayMember = "TenA";
            this.comboBoxApSuat.ValueMember = "MaA";

            this.comboBoxDoAm.DataSource = from x in db.DoAms select x;
            this.comboBoxDoAm.DisplayMember = "TenD";
            this.comboBoxDoAm.ValueMember = "MaD";

            this.comboBoxGio.DataSource = from x in db.Gios select x;
            this.comboBoxGio.DisplayMember = "TenG";
            this.comboBoxGio.ValueMember = "MaG";

            this.comboBoxNhietDo.DataSource = from x in db.NhietDos select x;
            this.comboBoxNhietDo.DisplayMember = "TenN";
            this.comboBoxNhietDo.ValueMember = "MaN";
        }

        private void buttonConfirm_Click(object sender, EventArgs e)
        {
            string gt = GetComboText();
            CheckGTs(gt);
            //UpdateTreeView();
        }


        private void CheckGTs(string gt)
        {
            var rules = from x in db.Rules
                        select new { GT = x.GT, KL = x.KL };

            string rs = string.Empty;
            Dictionary<string, int> thoitiet = new Dictionary<string, int>();
            int tong = 0;

            foreach (var r in rules)
            {
                bool HasAllGTs = true;
                List<string> gts = new List<string>();
                int index = 0;
                for (int i = 0; i <= r.GT.Length; i++)
                {
                    if (i == r.GT.Length || r.GT[i] == '^')
                    {
                        gts.Add(r.GT.Substring(index, i - index));
                        index = i + 1;
                    }
                }
                foreach (var ans in gts)
                {
                    if (!gt.Contains(ans))
                    {
                        HasAllGTs = false;
                        break;
                    }
                    index++;
                }
                if (HasAllGTs)
                {
                    thoitiet.Add(r.KL, index);
                    tong += index;
                }

            }
            if (thoitiet.Count == 0)
            {
                labelKetQua.Text = "Không xác định rõ";
            }
            else
            {
                foreach (var suit in thoitiet)
                {
                    rs += string.Format("{0} : {1}\n", MaTToTenT(suit.Key), PercentToWord((suit.Value / (double)tong) * 100));
                }
                labelKetQua.Text = rs;
            }
        }

        private string PercentToWord(double percent)
        {
            if (percent <= 0)
            {
                return "Không thể";
            }
            else if (percent <= 25)
            {
                return "Đôi khi";
            }
            else if (percent <= 50)
            {
                return "Có khả năng";
            }
            else if (percent <= 85)
            {
                return "Khả năng cao";
            }
            else
            {
                return "Chắc chắn";
            }
        }

        private void buttonTutuarial_Click(object sender, EventArgs e)
        {
            Form3 form3;
            form3 = new Form3();
            form3.Show();
        }

        private void buttonDetails_Click(object sender, EventArgs e)
        {
            if (_Role == _RoleName[1]) MessageBox.Show("You don't have role at this content", "permision resist");
            else if (_Role == _RoleName[0])
            {
                Form2 form2 = new Form2();
                form2.Show();
            }
        }

        private void buttonExit_Click(object sender, EventArgs e)
        {
            ReturnDialogResult(DialogResult.Cancel);
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            ReturnDialogResult(DialogResult.OK);
        }

        private void ReturnDialogResult(DialogResult dialogResult)
        {
            this.DialogResult = dialogResult;
            this.Dispose();
        }

        private string GetComboText()
        {
            string gt = string.Empty;
            if (comboBoxKhiHau.SelectedValue != null) gt += comboBoxKhiHau.SelectedValue.ToString() + "^";
            if (comboBoxDoAm.SelectedValue != null) gt += comboBoxDoAm.SelectedValue.ToString() + "^";
            if (comboBoxNhietDo.SelectedValue != null) gt += comboBoxNhietDo.SelectedValue.ToString() + "^";
            if (comboBoxGio.SelectedValue != null) gt += comboBoxGio.SelectedValue.ToString() + "^";
            if (comboBoxApSuat.SelectedValue != null) gt += comboBoxApSuat.SelectedValue.ToString();
            gt = RemoveSpace(gt);
            return gt;
        }

        string RemoveSpace(string gt)
        {
            gt = string.Join("", gt.Split(default(string[]), StringSplitOptions.RemoveEmptyEntries));
            return gt;
        }

        string MaTToTenT(string MaT)
        {
            try
            {
                IQueryable<string> tb = GetThoiTiets(MaT);
                return tb.FirstOrDefault();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
            return string.Empty;
        }

        private IQueryable<string> GetThoiTiets(string MaT)
        {
            return from x in db.ThoiTiets
                   where x.MaT == MaT
                   select new { x.TenT }.TenT;
        }
    }
}
