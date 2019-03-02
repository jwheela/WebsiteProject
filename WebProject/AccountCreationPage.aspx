<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AccountCreationPage.aspx.cs" Inherits="WebProject.WebForm6" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:HiddenField ID="hfUserID" runat="server" />

    <div class="container-fluid" style="background-color: darkred; width: 700px; border: thick; border-color: white; border-style: groove">

         <div class="row" style="margin: 8px">
            </div>
    

        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4"><h5 style="font-family:Castellar;">Enter your Email</h5><asp:TextBox ID="tboxEmailCreate" runat="server" TextMode="Email"></asp:TextBox></div>
            <div class="col-sm-4"></div>
        </div>

        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4"><h5 style="font-family:Castellar;">Create your Username</h5>
                <asp:TextBox ID="tboxUsernameCreate" runat="server"></asp:TextBox></div>
            <div class="col-sm-4"></div>
        </div>

        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4"><h5 style="font-family:Castellar;">Create your Password</h5>
                <asp:TextBox ID="tboxPasswordCreate" runat="server" TextMode="Password"></asp:TextBox></div>
            <div class="col-sm-4"></div>
        </div>

        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4"><h5 style="font-family:Castellar;">Confim your Password</h5>
                <asp:TextBox ID="tboxPasswordConfirm" runat="server" TextMode="Password"></asp:TextBox></div>
            <div class="col-sm-4"></div>
        </div>

    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <asp:Button ID="BtnAccountCreate" runat="server" Text="Create Account" OnClick="BtnAccountCreate_Click" /><asp:Button ID="BtnAccountReset" runat="server" Text="Reset Information" OnClick="BtnAccountReset_Click" />
        </div>
        <div class="col-sm-4"></div>
    </div>


    <div class="row"></div>
    <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>

         <div class="row" style="margin: 8px">
            </div>
    
            <div class="row" style="margin: 8px">
            </div>

    </div>

    
           


</asp:Content>
