<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebProject.WebForm7" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style="background-color: darkred; width: 700px; border: thick; border-color: white; border-style: groove">
        
            <div class="row" style="margin: 8px">
            </div>

        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <h1 style="font-family:Castellar;">Email</h1>
                <asp:TextBox ID="tbusername" runat="server"></asp:TextBox>
            </div>
        </div>
    <div class="col-sm-4"></div>




    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <h1 style="font-family:Castellar;">Password</h1>
            <asp:TextBox ID="tbpassword" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="col-sm-4"></div>

    </div>
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
            <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="BtnRegister_Click" />
            <asp:Label ID="lblLoginError" runat="server" Text="Label" ForeColor="Red"></asp:Label>
        </div>
        <div class="col-sm-4"></div>
    </div>
    </div>
</asp:Content>
