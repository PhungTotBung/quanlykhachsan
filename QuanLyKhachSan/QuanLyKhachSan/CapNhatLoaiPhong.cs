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
    public partial class fCapNhatLoaiPhong : Form
    {
        public fCapNhatLoaiPhong()
        {
            InitializeComponent();
        }

        private void btnTroVe_Click(object sender, EventArgs e)
        {
            fQuanLyPhong con = new fQuanLyPhong();
            con.Show();
            this.Hide();
        }
    }
}
