<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertDisk.aspx.cs" Inherits="DiskManagement.InsertDisk" %>

<%@ Register src="~/NewDisk.ascx" tagname="Disk" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <uc1:Disk ID="Disk1" runat="server" />
</asp:Content>
