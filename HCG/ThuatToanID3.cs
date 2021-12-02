using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Threading;

namespace CodeHCG
{
    public class ThuatToanID3
    {
        String connString = @"Data Source=DESKTOP-KO9IO6K;Initial Catalog=HCG1;Integrated Security=True";
        List<string> dsBang = new List<string>();
        List<String> dsThuocTinhBanDau = new List<string>();
        List<String> dsVungKhiHauBanDau = new List<string>();
        List<String> dsDoAmBanDau = new List<string>();
        List<String> dsNhietDoBanDau = new List<string>();
        List<String> dsGioBanDau = new List<string>();
        List<String> dsApSuatBanDau = new List<string>();
        List<String> dsThoiTietBanDau = new List<string>();
        DataTable table;
        List<string> giaTri;
        List<int> bo;
        int index = 0;

        TreeNode nodes;

        public TreeNode Nodes { get => nodes; set => nodes = value; }

        public void ID3()
        {
            DateTimeOffset startTime = (DateTimeOffset)DateTime.UtcNow;  //Thời gian bắt đầu;

            DeleteTapLuat();
            index = 0;
            dsBang.Add("VUNG1");
            dsBang.Add("VUNG2");
            dsBang.Add("VUNG3");
            dsBang.Add("VUNG4");
            dsBang.Add("VUNG5");
            foreach (string vung in dsBang)
            {
                codeGiaiID3(vung);
            }

            DateTimeOffset endTime = (DateTimeOffset)DateTime.UtcNow;  // Thời gian kết thúc;
            Console.WriteLine("Start: " + startTime.ToUnixTimeSeconds());
            Console.WriteLine("End: " + endTime.ToUnixTimeSeconds());
            Console.WriteLine("Total time: " + (endTime.ToUnixTimeSeconds() - startTime.ToUnixTimeSeconds()).ToString());
        }

        //Khoi tao table ban dau
        public void codeGiaiID3(string vungdulieu)
        {
            giaTri = new List<string>();
            bo = new List<int>();
            bo.Add(-1);
            if (vungdulieu == "VUNG1") giaTri.Add("V1");
            if (vungdulieu == "VUNG2") giaTri.Add("V2");
            if (vungdulieu == "VUNG3") giaTri.Add("V3");
            if (vungdulieu == "VUNG4") giaTri.Add("V4");
            if (vungdulieu == "VUNG5") giaTri.Add("V5");
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    String sql = string.Format("select * from {0}", vungdulieu);
                    table = GetTable(sql, conn);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            dsThuocTinhBanDau = getThuocTinh(table);
            getPhanTuCuaThuocTinhBanDau(vungdulieu, dsThuocTinhBanDau);
            foreach (string thoitiet in dsThoiTietBanDau)
            {
                TinhGain(table, thoitiet, 0);
            }
        }

        //Lấy danh sách các phần tử ban đầu của các thuộc tính
        public void getPhanTuCuaThuocTinhBanDau(string tenbang, List<string> abc)
        {
            foreach (string thuoctinh in abc)
            {
                String sqlDuLieu = string.Format("select Distinct {0} from {1}", thuoctinh, tenbang);
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    try
                    {
                        DataTable tl = GetTable(sqlDuLieu, conn);
                        List<string> ds = tl.AsEnumerable().Select(x => x[0].ToString()).ToList();
                        CheckThuocTinh(thuoctinh, ds);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
            }
        }

        DataTable GetTable(string sqlDuLieu, SqlConnection conn)
        {
            SqlDataAdapter adapter = new SqlDataAdapter(sqlDuLieu, conn);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset);
            DataTable tl = dataset.Tables[0];
            return tl;
        }

        private void CheckThuocTinh(string thuoctinh, List<string> ds)
        {
            if (thuoctinh == "vungKhiHau") dsVungKhiHauBanDau = ds;
            if (thuoctinh == "doAm") dsDoAmBanDau = ds;
            if (thuoctinh == "nhietDo") dsNhietDoBanDau = ds;
            if (thuoctinh == "gio") dsGioBanDau = ds;
            if (thuoctinh == "apSuat") dsApSuatBanDau = ds;
            if (thuoctinh == "thoiTiet") dsThoiTietBanDau = ds;
        }

        //Lấy các phần tử của thuộc tính
        public List<string> getPhanTuCuaThuocTinh(DataTable banglayphantu, string thuoctinh)
        {
            List<string> dsTraVe = new List<string>();
            if (thuoctinh == "doAm")
            {
                return getPhanTu(banglayphantu, dsDoAmBanDau, thuoctinh);
            }
            if (thuoctinh == "nhietDo")
            {
                return getPhanTu(banglayphantu, dsNhietDoBanDau, thuoctinh);
            }
            if (thuoctinh == "gio")
            {
                return getPhanTu(banglayphantu, dsGioBanDau, thuoctinh);
            }
            if (thuoctinh == "apSuat")
            {
                return getPhanTu(banglayphantu, dsApSuatBanDau, thuoctinh);
            }
            return null;
        }
        public List<string> getPhanTu(DataTable banglayphantu, List<string> dsdulieu, string thuoctinh)
        {
            List<string> dsTraVe = new List<string>();
            foreach (string aaa in dsdulieu)
            {
                string sss = string.Format("{0} = '{1}'", thuoctinh, aaa);
                DataRow[] xetDong = banglayphantu.Select(sss);
                if (xetDong.Length != 0)
                {
                    dsTraVe.Add(aaa);
                }
            }
            return dsTraVe;
        }

        //Lấy các thuộc tính của datatable
        public List<string> getThuocTinh(DataTable bangMoi)
        {
            string[] abc = bangMoi.Columns.Cast<DataColumn>().Where(x => x.ColumnName != "ABC").Select(x => x.ColumnName).ToArray();
            List<string> asb = new List<string>(abc);
            return asb;
        }

        //Công thức tính Entropy chung
        public double tinhEntropy(double co, double khong)
        {
            if (co == 0 || khong == 0)
                return 0;
            else
                return -((co / (co + khong)) * Math.Log(co / (co + khong), 2)) - ((khong / (co + khong)) * Math.Log(khong / (co + khong), 2));
        }

        //đếm tổng yes của s đầu tiên
        public double demTongCoS(DataTable bangxet, string truongdulieu, string thoitiet)
        {
            string aaa = string.Format("{0} = '{1}'", truongdulieu, thoitiet);
            DataRow[] row = bangxet.Select(aaa);
            int dem = row.Length;
            return dem;
        }
        //Đếm tổng No của S đầu tiên
        public double demTongKhongS(DataTable bangxet, string truongdulieu, string thoitiet)
        {
            string aaa = string.Format("{0} NOT IN ('{1}')", truongdulieu, thoitiet);
            DataRow[] row = bangxet.Select(aaa);
            int dem = row.Length;
            return dem;
        }

        //Đếm tổng Yes chung
        public double demTongCoChung(DataTable bangxet, string tentruong, string phantu, string thuoctinhthoitiet, string thoitiet)
        {
            string aaa = string.Format("{0} = '{1}' AND {2} = '{3}'", tentruong, phantu, thuoctinhthoitiet, thoitiet);
            DataRow[] row = bangxet.Select(aaa);
            int dem = row.Length;
            return dem;
        }
        //Đếm tổng No chung
        public double demTongKhongChung(DataTable bangxet, string tentruong, string phantu, string thuoctinhthoitiet, string thoitiet)
        {
            string aaa = string.Format("{0} = '{1}' AND {2} NOT IN ('{3}')", tentruong, phantu, thuoctinhthoitiet, thoitiet);
            DataRow[] row = bangxet.Select(aaa);
            int dem = row.Length; ;
            return dem;
        }

        //Đệ quy Gain
        public void TinhGain(DataTable bangDuLieu, string thoitiet, int father)
        {
            ////Thực hiện tính toán tuần tự
            //double gainMax = -1;
            //int luuVetThuocTinh = -1;
            //List<string> listThuocTinh = getThuocTinh(bangDuLieu);
            ////Tìm thuộc tính có Gain lớn nhất
            //for (int i = 0; i <= listThuocTinh.Count - 2; i++)
            //{
            //    double coS = demTongCoS(bangDuLieu, "thoiTiet", thoitiet);
            //    double khongS = demTongKhongS(bangDuLieu, "thoiTiet", thoitiet);
            //    double tinhToan = tinhEntropy(coS, khongS);
            //    tinhToan = TinhGainThuocTinh(bangDuLieu, thoitiet, listThuocTinh, i, coS, khongS, tinhToan);
            //    //Gán lại gainMax
            //    if (tinhToan >= gainMax)
            //    {
            //        gainMax = tinhToan;
            //        luuVetThuocTinh = i;
            //    }
            //}
            ////Xây dựng các bảng mới từ các phần tử của thuộc tính tối ưu
            //BuildTree(bangDuLieu, thoitiet, father, luuVetThuocTinh, listThuocTinh);

            ////Thực hiện tính toán song song
            double gainMax = -1;
            int luuVetThuocTinh = -1;
            List<string> listThuocTinh = getThuocTinh(bangDuLieu);
            var keyMap = new Dictionary<int, double>();
            List<Thread> listThread = new List<Thread>();
            //Tìm thuộc tính có Gain lớn nhất
            for (int i = 0; i <= listThuocTinh.Count - 2; i++)
            {
                var tmp = i;
                Thread th = new Thread(() =>
                {
                    double coS = demTongCoS(bangDuLieu, "thoiTiet", thoitiet);
                    double khongS = demTongKhongS(bangDuLieu, "thoiTiet", thoitiet);
                    double tinhToan = tinhEntropy(coS, khongS);
                    tinhToan = TinhGainThuocTinh(bangDuLieu, thoitiet, listThuocTinh, tmp, coS, khongS, tinhToan);
                    keyMap.Add(tmp, tinhToan);
                });
                //th.IsBackground = false;
                th.Start();
                listThread.Add(th);
            }
            foreach (var thread in listThread)
            {
                thread.Join();
            }
            foreach (var item in keyMap)
            {
                if (item.Value >= gainMax)
                {
                    gainMax = item.Value;
                    luuVetThuocTinh = item.Key;
                }
            }
            //Xây dựng các bảng mới từ các phần tử của thuộc tính tối ưu
            BuildTree(bangDuLieu, thoitiet, father, luuVetThuocTinh, listThuocTinh);
        }

        private double TinhGainThuocTinh(DataTable bangDuLieu, string thoitiet, List<string> listThuocTinh, int i, double coS, double khongS, double tinhToan)
        {
            Thread.Sleep(500);
            List<string> listPhanTu = getPhanTuCuaThuocTinh(bangDuLieu, listThuocTinh[i]);
            //Console.WriteLine(listPhanTu);
            foreach (string sss in listPhanTu)
            {
                double co = demTongCoChung(bangDuLieu, listThuocTinh[i], sss, listThuocTinh[listThuocTinh.Count - 1], thoitiet);
                double khong = demTongKhongChung(bangDuLieu, listThuocTinh[i], sss, listThuocTinh[listThuocTinh.Count - 1], thoitiet);
                tinhToan += -(((co + khong) / (coS + khongS)) * tinhEntropy(co, khong));
            }
            return tinhToan;
        }

        private void BuildTree(DataTable bangDuLieu, string thoitiet, int father, int luuVetThuocTinh, List<string> listThuocTinh)
        {
            List<string> listThuocTinhToiTuu = getPhanTuCuaThuocTinh(bangDuLieu, listThuocTinh[luuVetThuocTinh]);
            foreach (string abc in listThuocTinhToiTuu)
            {
                giaTri.Add(abc);
                bo.Add(father);
                double co = demTongCoChung(bangDuLieu, listThuocTinh[luuVetThuocTinh], abc, listThuocTinh[listThuocTinh.Count - 1], thoitiet);
                double khong = demTongKhongChung(bangDuLieu, listThuocTinh[luuVetThuocTinh], abc, listThuocTinh[listThuocTinh.Count - 1], thoitiet);
                if (co != 0 && khong != 0)
                {
                    string sqlLinhTinh = string.Format("{0} = '{1}'", listThuocTinh[luuVetThuocTinh], abc);
                    DataRow[] rows = bangDuLieu.Select(sqlLinhTinh);
                    DataTable bangMoi = new DataTable();
                    bangMoi = bangDuLieu.Clone();
                    foreach (DataRow row in rows) bangMoi.ImportRow(row);
                    bangMoi.Columns.Remove(listThuocTinh[luuVetThuocTinh]);
                    TinhGain(bangMoi, thoitiet, giaTri.Count - 1);
                }
                if (khong == 0)
                {
                    GenegateTapLuat(thoitiet);
                }
            }
        }

        //Hàm lấy tập luật
        public void GenegateTapLuat(string tt)
        {
            int n = giaTri.Count - 1;
            int i = bo[n];
            string tapluat = giaTri[n];

            while (i > 0)
            {
                n = bo[n];
                i = bo[n];
                tapluat = giaTri[n] + "^" + tapluat;
            }
            tapluat = giaTri[0] + "^" + tapluat;

            //Nodes = new TreeNode();
            //Nodes.Tag = giaTri[0];

            InsertTapLuat(tt, tapluat);
        }

        private void InsertTapLuat(string tt, string tapluat)
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                if (conn.State == ConnectionState.Closed)
                    conn.Open();
                String sql = "INSERT INTO Rules VALUES(@stt,@dieukien, @ketluan)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                index++;
                cmd.Parameters.AddWithValue("@stt", index);
                cmd.Parameters.AddWithValue("@dieukien", tapluat);
                cmd.Parameters.AddWithValue("@ketluan", tt);
                cmd.ExecuteNonQuery();
            }
        }

        //Hàm xóa dữ liệu table Tập luật trong SQL SERVER
        public void DeleteTapLuat()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                if (conn.State == ConnectionState.Closed)
                    conn.Open();
                String sql = "DELETE Rules";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
            }
        }
    }
}
