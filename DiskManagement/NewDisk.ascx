<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewDisk.ascx.cs" Inherits="DiskManagement.NewDisk" ClassName="NewDisk" %>

<div class="diskTable">
    <br />
    <br />
    <div class="diskTableRow">
        <div class="diskTableLeftCol">
            <asp:Label ID="DiskPlaceLabel" runat="server" Text="Локация:"></asp:Label>
        </div>
        <div class="diskTableRightCol">
             <asp:TextBox ID="DiskPlaceTextBox" runat="server" MaxLength="40"></asp:TextBox>
            <asp:RequiredFieldValidator ID="DiskPlaceRequiredFieldValidator" ControlToValidate="DiskPlaceTextBox"
                runat="server" ErrorMessage="Поле локации должно быть заполнено" Text="*"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="diskTableRow">
        <div class="diskTableLeftCol">
            <asp:Label ID="DiskMediumLabel" runat="server" Text="Носитель:"></asp:Label>
        </div>
        <div class="diskTableRightCol">
            <asp:TextBox ID="DiskMediumTextBox" runat="server" MaxLength="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="DiskMediumRequiredFieldValidator" ControlToValidate="DiskMediumTextBox"
                runat="server" ErrorMessage="Поле носителя должно быть заполнено" Text="*"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="diskTableRow">
        <div class="diskTableLeftCol">
            <asp:Label ID="DiskPublisherLabel" runat="server" Text="Издатель:"></asp:Label>
        </div>
        <div class="diskTableRightCol">
            <asp:TextBox ID="DiskPublisherTextBox" runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="DiskPublisherRequiredFieldValidator" ControlToValidate="DiskPublisherTextBox"
                runat="server" ErrorMessage="Поле Издателя должно быть заполнено" Text="*"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="diskTableRow">
        <div class="diskTableLeftCol">
            <asp:Label ID="DiskAlbumLabel" runat="server" Text="Название альбома:"></asp:Label>
        </div>
        <div class="diskTableRightCol">
            <asp:TextBox ID="DiskAlbumTextBox" runat="server" MaxLength="30"></asp:TextBox>
            <asp:RequiredFieldValidator ID="DiskAlbumRequiredFieldValidator" ControlToValidate="DiskAlbumTextBox"
                runat="server" ErrorMessage="Название альбома не может быть пустым" Text="*"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="diskTableRow">
        <div class="diskTableLeftCol">
            <asp:Label ID="DiskGenreLabel" runat="server" Text="Музыкальный жанр:"></asp:Label>
        </div>
        <div class="diskTableRightCol">
            <asp:TextBox ID="DiskGenreTextBox" runat="server" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="DiskGenreRequiredFieldValidator" ControlToValidate="DiskGenreTextBox"
                runat="server" ErrorMessage="Жанр не может быть пустым" Text="*"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="diskTableRow">
        <div class="diskTableLeftCol">
            <asp:Label ID="DiskPerformerLabel" runat="server" Text="Исполнитель:"></asp:Label>
        </div>
        <div class="diskTableRightCol">
            <asp:TextBox ID="DiskPerformerTextBox" runat="server" MaxLength="40"></asp:TextBox>
            <asp:RequiredFieldValidator ID="DiskPerformerRequiredFieldValidator" ControlToValidate="DiskPerformerTextBox"
                runat="server" ErrorMessage="Имя исполнителя не может быть пустым" Text="*"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="diskTableRow">
        <div class="diskTableLeftCol">
            <asp:Label ID="DiskStudioLabel" runat="server" Text="Лейбл:"></asp:Label>
        </div>
        <div class="diskTableRightCol">
            <asp:TextBox ID="DiskStudioTextBox" runat="server" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="DiskStudioRequiredFieldValidator" ControlToValidate="DiskStudioTextBox"
                runat="server" ErrorMessage="Название лейбла не может быть пустым" Text="*"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="diskTableRow">
        <div class="diskTableLeftCol">
            <asp:Label ID="DiskSongsLabel" runat="server" Text="Количество песен:"></asp:Label>
        </div>
        <div class="diskTableRightCol">
            <asp:TextBox ID="DiskSongsTextBox" runat="server" MaxLength="2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="DiskSongsRequiredFieldValidator" ControlToValidate="DiskSongsTextBox"
                runat="server" ErrorMessage="Количество песен должно быть заполнено" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="DiskSongsRangeValidator" ControlToValidate="DiskSongsTextBox"
                runat="server" MinimumValue="1" MaximumValue="50" ErrorMessage="Количество песен должно соответствовать выставленным рамкам"
                Text="*" Type="Integer"></asp:RangeValidator>
        </div>
    </div>
    <div class="diskTableRow">
        <div class="diskTableLeftCol">
            <asp:Label ID="DiskPriceLabel" runat="server" Text="Цена:"></asp:Label>
        </div>
        <div class="diskTableRightCol">
            <asp:TextBox ID="DiskPriceTextBox" runat="server" MaxLength="4"></asp:TextBox>
            <asp:RequiredFieldValidator ID="DiskPriceRequiredFieldValidator" ControlToValidate="DiskPriceTextBox"
                runat="server" ErrorMessage="Поле цены должно быть заполнено" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="DiskPriceRangeValidator" ControlToValidate="DiskPriceTextBox"
                runat="server" MinimumValue="100" MaximumValue="500" ErrorMessage="Цена должна соответствовать выставленным рамкам"
                Text="*" Type="Double"></asp:RangeValidator>
        </div>
    </div>
    <div class="diskTableRow">
        <div class="diskTableLeftCol">
            <asp:Label ID="DiskHandoverLabel" runat="server" Text="Одолжили:"></asp:Label>
        </div>
        <div class="diskTableRightCol">
            <asp:CheckBox ID="DiskHandoverCheckBox" runat="server" />
        </div>
    </div>
    <div class="diskTableFooter">
        <asp:ValidationSummary ID="DiskValidationSummary" runat="server"></asp:ValidationSummary>
        <asp:Button ID="DiskInsertButton" runat="server" Text="Добавить" Width="196px" OnClick="DiskInsertButton_Click" />
        <asp:Button ID="DiskCancelButton" runat="server" Text="Отмена" Width="205px" OnClick="DiskCancelButton_Click" CausesValidation="false" />
    </div>
</div>
