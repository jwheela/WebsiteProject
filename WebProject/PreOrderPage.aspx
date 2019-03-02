<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PreOrderPage.aspx.cs" Inherits="WebProject.WebForm2" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
   
        <div class="container-fluid" style="background-color: darkred; width: 700px; border: thick; border-color: white; border-style: groove">
            
            <div class="row" style="margin: 8px">
            </div>

            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4" style="text-align: center">
                    <h1 style="font-family:Castellar;">PREORDER</h1>
                </div>
                <div class="col-sm-4" style="left: 0px; top: 0px; height: 54px">&nbsp;</div>
            </div>


            <div class="row">
                <div class="col-sm-4" style="text-align:center"></div>
                <div class="col-sm-4" style="text-align: center">
                    <h2 style="font-family:Castellar;">System</h2>
                    <asp:DropDownList ID="ddlSystemType1" runat="server" AutoPostBack="True">
                        <asp:ListItem>XBOX ONE</asp:ListItem>
                        <asp:ListItem>PS4</asp:ListItem>
                        <asp:ListItem>PC</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-4"></div>
            </div>


            <div class="row">
                <div class="col-sm-4">&nbsp;</div>
                <div class="col-sm-4" style="text-align: center">
                    <h2 style="font-family:Castellar;">Game Edition</h2>
                    <asp:DropDownList ID="ddlGameEdition1" runat="server" AutoPostBack="True">
                        <asp:ListItem>Standard Edition</asp:ListItem>
                        <asp:ListItem>Deluxe Edition</asp:ListItem>
                        <asp:ListItem>Collecter's Edition</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-4"></div>
            </div>


            <div class="row">
                <div class="col-sm-4">&nbsp;</div>
                <div class="col-sm-4" style="text-align: center">
                    <h2 style="font-family:Castellar;">Retailer</h2>
                    <asp:DropDownList ID="ddlRetailer" runat="server" AutoPostBack="True">
                        <asp:ListItem>Walmart</asp:ListItem>
                        <asp:ListItem>Target</asp:ListItem>
                        <asp:ListItem>Best Buy</asp:ListItem>
                        <asp:ListItem>Gamestop</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-4"></div>
            </div>



            <div class="row">
                <div class="col-sm-4">&nbsp;</div>
                <div class="col-sm-4" style="text-align: center">
                    <asp:Button ID="BtnPurchase" runat="server" Text="Proceed to Checkout" OnClick ="BtnPurchase_Click" /><asp:Button ID="BtnPurchaseReset" runat="server" Text="Reset" />

                </div>
                <div class="col-sm-4"></div>
            </div>


            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4" style="text-align: center">
                    <asp:Label ID="lblYesPurchase" runat="server" ForeColor="White" Text=""></asp:Label><asp:Label ID="lblNoPurchase" ForeColor="White" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-sm-4"></div>
            </div>
            <div class="row" style="height: 15px"></div>
        </div>
   


</asp:Content>
