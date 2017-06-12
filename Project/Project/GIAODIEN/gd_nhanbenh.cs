﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;



namespace Project.GIAODIEN
{
    public partial class gd_nhanbenh : Form
    {
        public gd_nhanbenh()
        {
            InitializeComponent();
        }
        void ResetAll()
        {
            txt_hoten.Clear();
            txt_diachi.Clear();
            txt_ngaysinh.Clear();
            txt_sdt.Clear();
        }
        private void btn_XepVaoHangDoi_Click(object sender, EventArgs e)
        {
            string hoten = txt_hoten.Text;
            string sdt = txt_sdt.Text;
            string[] row = { hoten, sdt };
            gv_danhsachbenhnhan.Rows.Add(row);
            ResetAll();
            gv_danhsachbenhnhan.Visible = true;
        }

        private void btn_TaoMoi_Click(object sender, EventArgs e)
        {
            ResetAll();
        }

        private void gv_danhsachbenhnhan_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gv_danhsachbenhnhan.SelectedRows.Count != -1)
            {
                DataGridViewRow row = gv_danhsachbenhnhan.SelectedRows[0];
                txt_hoten.Text = row.Cells[0].Value.ToString();
            }
        }

        private void btn_xoa_Click(object sender, EventArgs e)
        {
            if (gv_danhsachbenhnhan.SelectedRows.Count != 0) { 
                gv_danhsachbenhnhan.Rows.RemoveAt(gv_danhsachbenhnhan.SelectedRows[0].Index);
                ResetAll();
            }
        }
    }
}
