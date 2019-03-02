<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SupportPage.aspx.cs" Inherits="WebProject.WebForm5" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style="background-color: darkred; width: 700px; border: thick; border-color: white; border-style: groove">

        
            <div class="row" style="margin: 8px">
            </div>
     
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <h4 style="font-family:Castellar;">Select the game system</h4>
                <asp:DropDownList ID="ddlSystemType" runat="server">
                    <asp:ListItem>XBOX ONE</asp:ListItem>
                    <asp:ListItem>PS4</asp:ListItem>
                    <asp:ListItem>PC</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4"></div>
        </div>

        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <h4 style="font-family:Castellar;">Select the game edition</h4>
                <asp:DropDownList ID="ddlGameVersion" runat="server">
                    <asp:ListItem>Standard Edition</asp:ListItem>
                    <asp:ListItem>Deluxe Edition</asp:ListItem>
                    <asp:ListItem>Collector's Edition</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4"></div>
        </div>

        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <h4 style="font-family:Castellar;">Select the issue you are experiencing</h4>
                <asp:DropDownList ID="ddlIssueExperienced" runat="server">
                    <asp:ListItem>My game crashes to desktop</asp:ListItem>
                    <asp:ListItem>The game keeps freezing</asp:ListItem>
                    <asp:ListItem>My character is invisible</asp:ListItem>
                    <asp:ListItem>Textures keep popping in too close</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4"></div>
        </div>

        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <asp:Button ID="BtnGetHelp" runat="server" Text="Get Help" OnClick="BtnGetHelp_Click" />
                <asp:Label ID="lblIssueSubmitted" runat="server" Text="" ForeColor="White"></asp:Label><asp:Label ID="lblNoSubmitted" runat="server" Text=""></asp:Label>
            </div>
        <div class="col-sm-4"></div>
    </div>

        
            <div class="row" style="margin: 8px">
            </div>

    </div>
</asp:Content>
