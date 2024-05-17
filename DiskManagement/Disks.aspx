<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Disks.aspx.cs" Inherits="DiskManagement.Disks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <br />
    <br />
    <div class="disksHeader">
        <asp:Button ID="AllListButton" runat="server" Text="Вывести весь список" Width="198px" OnClick="AllListButton_Click" />
        <asp:Button ID="FilterButton" runat="server" Text="Отсортировать по цене" OnClick="FilterButton_Click" Width="199px" />
        <asp:Button ID="ClearHandOverButton" runat="server" Text="Убрать одолженные" OnClick="ClearHandOverButton_Click"/>
    &nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="138px">
            <asp:ListItem>Все типы</asp:ListItem>
            <asp:ListItem>CD-ROM</asp:ListItem>
            <asp:ListItem>CD-R</asp:ListItem>
            <asp:ListItem>DVD</asp:ListItem>
            <asp:ListItem>BD</asp:ListItem>
        </asp:DropDownList>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="true" style="margin-left: 19px" Width="198px" placeholder="Поиск по жанру"></asp:TextBox>
    </div>
    <asp:ListView ID="DisksListView" runat="server" DataKeyNames="disk_id" OnItemDeleting="DisksListView_ItemDeleting">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:LinkButton ID="LinkBtnDelete" runat="server" OnClientClick="if (!confirm('Вы уверены, что хотите удалить этот диск?')) return false;" CommandName="Delete">Удалить</asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                </td>
                <td>
                    <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                </td>
                <td>
                    <asp:Label ID="mediumLabel" runat="server" Text='<%# Eval("medium") %>' />
                </td>
                <td>
                    <asp:Label ID="publisherLabel" runat="server" Text='<%# Eval("publisher") %>' />
                </td>
                <td>
                    <asp:Label ID="album_nameLabel" runat="server" Text='<%# Eval("album_name") %>' />
                </td>
                <td>
                    <asp:Label ID="music_genreLabel" runat="server" Text='<%# Eval("music_genre") %>' />
                </td>
                <td>
                    <asp:Label ID="performerLabel" runat="server" Text='<%# Eval("performer") %>' />
                </td>
                <td>
                    <asp:Label ID="labelLabel" runat="server" Text='<%# Eval("label") %>' />
                </td>
                <td>
                    <asp:Label ID="songs_quantityLabel" runat="server" Text='<%# Eval("songs_quantity") %>' />
                </td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                </td>
                
                <td>
                    <asp:CheckBox ID="hand_overCheckBox" runat="server" Checked='<%# Eval("hand_over") %>' Enabled="false" />
                </td>
                
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="disk_idLabel1" runat="server" Text='<%# Eval("disk_id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                </td>
                <td>
                    <asp:TextBox ID="mediumTextBox" runat="server" Text='<%# Bind("medium") %>' />
                </td>
                <td>
                    <asp:TextBox ID="publisherTextBox" runat="server" Text='<%# Bind("publisher") %>' />
                </td>
                <td>
                    <asp:TextBox ID="album_nameTextBox" runat="server" Text='<%# Bind("album_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="music_genreTextBox" runat="server" Text='<%# Bind("music_genre") %>' />
                </td>
                <td>
                    <asp:TextBox ID="performerTextBox" runat="server" Text='<%# Bind("performer") %>' />
                </td>
                <td>
                    <asp:TextBox ID="labelTextBox" runat="server" Text='<%# Bind("label") %>' />
                </td>
                <td>
                    <asp:TextBox ID="songs_quantityTextBox" runat="server" Text='<%# Bind("songs_quantity") %>' />
                </td>
                <td>
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="hand_overCheckBox" runat="server" Checked='<%# Bind("hand_over") %>' />
                </td>
                
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                </td>
                <td>
                    <asp:TextBox ID="mediumTextBox" runat="server" Text='<%# Bind("medium") %>' />
                </td>
                <td>
                    <asp:TextBox ID="publisherTextBox" runat="server" Text='<%# Bind("publisher") %>' />
                </td>
                <td>
                    <asp:TextBox ID="album_nameTextBox" runat="server" Text='<%# Bind("album_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="music_genreTextBox" runat="server" Text='<%# Bind("music_genre") %>' />
                </td>
                <td>
                    <asp:TextBox ID="performerTextBox" runat="server" Text='<%# Bind("performer") %>' />
                </td>
                <td>
                    <asp:TextBox ID="labelTextBox" runat="server" Text='<%# Bind("label") %>' />
                </td>
                <td>
                    <asp:TextBox ID="songs_quantityTextBox" runat="server" Text='<%# Bind("songs_quantity") %>' />
                </td>
                <td>
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="hand_overCheckBox" runat="server" Checked='<%# Bind("hand_over") %>' />
                </td>
                
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:LinkButton ID="LinkBtnDelete" runat="server" OnClientClick="if (!confirm('Вы уверены, что хотите удалить этот диск?')) return false;" CommandName="Delete">Удалить</asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                </td>
                <td>
                    <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                </td>
                <td>
                    <asp:Label ID="mediumLabel" runat="server" Text='<%# Eval("medium") %>' />
                </td>
                <td>
                    <asp:Label ID="publisherLabel" runat="server" Text='<%# Eval("publisher") %>' />
                </td>
                <td>
                    <asp:Label ID="album_nameLabel" runat="server" Text='<%# Eval("album_name") %>' />
                </td>
                <td>
                    <asp:Label ID="music_genreLabel" runat="server" Text='<%# Eval("music_genre") %>' />
                </td>
                <td>
                    <asp:Label ID="performerLabel" runat="server" Text='<%# Eval("performer") %>' />
                </td>
                <td>
                    <asp:Label ID="labelLabel" runat="server" Text='<%# Eval("label") %>' />
                </td>
                <td>
                    <asp:Label ID="songs_quantityLabel" runat="server" Text='<%# Eval("songs_quantity") %>' />
                </td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                </td>
               
                
                
                <td>
                    <asp:CheckBox ID="hand_overCheckBox" runat="server" Checked='<%# Eval("hand_over") %>' Enabled="false" />
                </td>
               
                
                
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server"></th>
                                <th runat="server">disk_id</th>
                                <th runat="server">location</th>
                                <th runat="server">medium</th>
                                <th runat="server">publisher</th>
                                <th runat="server">album_name</th>
                                <th runat="server">music_genre</th>
                                <th runat="server">performer</th>
                                <th runat="server">label</th>
                                <th runat="server">songs_quantity</th>
                                <th runat="server">price</th>
                        
                                <th runat="server">hand_over</th>
                        
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </td>
                <td>
                    <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                </td>
                <td>
                    <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                </td>
                <td>
                    <asp:Label ID="mediumLabel" runat="server" Text='<%# Eval("medium") %>' />
                </td>
                <td>
                    <asp:Label ID="publisherLabel" runat="server" Text='<%# Eval("publisher") %>' />
                </td>
                <td>
                    <asp:Label ID="album_nameLabel" runat="server" Text='<%# Eval("album_name") %>' />
                </td>
                <td>
                    <asp:Label ID="music_genreLabel" runat="server" Text='<%# Eval("music_genre") %>' />
                </td>
                <td>
                    <asp:Label ID="performerLabel" runat="server" Text='<%# Eval("performer") %>' />
                </td>
                <td>
                    <asp:Label ID="labelLabel" runat="server" Text='<%# Eval("label") %>' />
                </td>
                <td>
                    <asp:Label ID="songs_quantityLabel" runat="server" Text='<%# Eval("songs_quantity") %>' />
                </td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                </td>
   
                <td>
                    <asp:CheckBox ID="hand_overCheckBox" runat="server" Checked='<%# Eval("hand_over") %>' Enabled="false" />
                </td>
   
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    </asp:Content>
