using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiskManagementEntities;
using System.Data.SqlClient;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Configuration;
using System.Diagnostics;

namespace DiskManagement
{
    public partial class NewDisk : System.Web.UI.UserControl
    {
        private DiskClass currentDisk = null;

        DiskDataContext db = new DiskDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();

                if (!Page.IsValid)
                    return;
            }

            instantiateDiskObject();
            populateUI();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            currentDisk = null;
        }

        protected void DiskInsertButton_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            Disk newDisk = new Disk(
                DiskPlaceTextBox.Text,
                DiskMediumTextBox.Text,
                DiskPublisherTextBox.Text,
                DiskAlbumTextBox.Text,
                DiskGenreTextBox.Text,
                DiskPerformerTextBox.Text,
                DiskStudioTextBox.Text,
                Int32.Parse(DiskSongsTextBox.Text),
                decimal.Parse(DiskPriceTextBox.Text),
                DiskHandoverCheckBox.Checked);
            db.Disks.InsertOnSubmit(newDisk);
            db.SubmitChanges();
            Response.Redirect("~/InsertDisk.aspx");
        }

        protected void DiskCancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        private void instantiateDiskObject()
        {
            if (!this.IsPostBack)
                currentDisk = new DiskClass();
            else
                currentDisk = new DiskClass(
                DiskPlaceTextBox.Text,
                DiskMediumTextBox.Text,
                DiskPublisherTextBox.Text,
                DiskAlbumTextBox.Text,
                DiskGenreTextBox.Text, 
                DiskPerformerTextBox.Text,
                DiskStudioTextBox.Text,
                Int32.Parse(DiskSongsTextBox.Text),
                decimal.Parse(DiskPriceTextBox.Text), 
                DiskHandoverCheckBox.Checked);
        }

        private void populateUI()
        {
            DiskPlaceTextBox.Text = currentDisk.Place;
            DiskMediumTextBox.Text = currentDisk.Medium;
            DiskPublisherTextBox.Text = currentDisk.Publisher;
            DiskAlbumTextBox.Text = currentDisk.Album;
            DiskGenreTextBox.Text = currentDisk.Genre;
            DiskPerformerTextBox.Text = currentDisk.Performer;
            DiskStudioTextBox.Text = currentDisk.Label;
            DiskSongsTextBox.Text = currentDisk.Songs.ToString();
            DiskPriceTextBox.Text = currentDisk.Price.ToString();
            DiskHandoverCheckBox.Checked = currentDisk.HandOver;
        }
    }
}