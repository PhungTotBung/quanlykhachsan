using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyKhachSan
{
    public partial class fManHinhChinh : Form
    {
        public fManHinhChinh()
        {
            InitializeComponent();
        }

        private void quảnLýPhòngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            fQuanLyPhong con = new fQuanLyPhong();
            con.Show();
        }

        private void quảnLýNhânViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            fQuanLyNhanVien con = new fQuanLyNhanVien();
            con.Show();
        }

        private void quảnLýKháchHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            fQuanLyKhachHang con = new fQuanLyKhachHang();
            con.Show();
        }

        private void thốngKêToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            fThongKe con = new fThongKe();
            con.Show();
        }

        private void liênHệToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            fLietHe con = new fLietHe();
            con.Show();
        }

        private void btnChiTiet1_Click(object sender, EventArgs e)
        {
            this.Hide();
            fChiTietPhieuPhong con = new fChiTietPhieuPhong();
            con.Show();
        }
    }
}
