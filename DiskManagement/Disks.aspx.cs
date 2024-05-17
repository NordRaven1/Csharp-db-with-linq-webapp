using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using DiskManagementEntities;
using System.Diagnostics;

namespace DiskManagement
{
    public partial class Disks : System.Web.UI.Page
    {
        DiskDataContext db = new DiskDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var query = from d in db.Disks
                        select d;
            if (!this.IsPostBack)
            {
                DisksListView.DataSource = query;
                DisksListView.DataBind();
            }

            else
            {
                DisksListView.DataSource = query;
                DisksListView.DataBind();
            }
               


        }

        protected void FilterButton_Click(object sender, EventArgs e)
        {

            var query = from d in db.Disks
                        orderby d.price
                        select d;
            DisksListView.DataSource = query;
            DisksListView.DataBind();
        }

        protected void AllListButton_Click(object sender, EventArgs e)
        {
            var query = from d in db.Disks
                        select d;
            DisksListView.DataSource = query;
            DisksListView.DataBind();
        }

        protected void DisksListView_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            var userToDelete =
                from d in db.Disks
                     where d.disk_id == Int32.Parse(e.Keys["disk_id"].ToString())
                select d;
            db.Disks.DeleteOnSubmit(userToDelete.FirstOrDefault());
            db.SubmitChanges();

            var query = from d in db.Disks
                        select d;

            DisksListView.DataSource = query;
            DisksListView.DataBind();
        }

        protected void ClearHandOverButton_Click(object sender, EventArgs e)
        {
            var query = from d in db.Disks
                        where d.hand_over != true
                        select d;
            DisksListView.DataSource = query;
            DisksListView.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedItem.Text == "Все типы")
            {
                var query = from d in db.Disks
                            select d;
                DisksListView.DataSource = query;
                DisksListView.DataBind();
            }
            else
            {
                var query = from d in db.Disks
                            where d.medium == DropDownList1.SelectedItem.Text
                            select d;
                DisksListView.DataSource = query;
                DisksListView.DataBind();
            }
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            var query = from d in db.Disks
                        where d.music_genre == TextBox1.Text
                        select d;
            DisksListView.DataSource = query;
            DisksListView.DataBind();
        }
    }
}