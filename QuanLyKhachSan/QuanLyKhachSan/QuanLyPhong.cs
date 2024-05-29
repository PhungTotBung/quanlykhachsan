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
    public partial class fQuanLyPhong : Form
    {
        public fQuanLyPhong()
        {
            InitializeComponent();
        }

        private void btnTroVe_Click(object sender, EventArgs e)
        {
            fManHinhChinh con = new fManHinhChinh();
            con.Show();
            this.Hide();
        }
    }
}
