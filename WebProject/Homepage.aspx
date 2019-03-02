<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebProject.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table class="w-100">
        <tr>
            <td style="width: 100%; height: 500px; text-align: center; background-image: url('/images/img01.jpg'); background-repeat: no-repeat; background-position: center; background-size: cover; border: solid">
              
            </td>
        </tr>
        <tr>
            <td style="width: 100%; height: 178px; background-color: blue; text-align: center; border: solid; background-image: url('/images/img03.jpg');">
                <asp:HyperLink ID="HypLinkNews" runat="server" NavigateUrl="~/News.aspx" BorderStyle="Inset" BorderColor="SeaGreen" BackColor="maroon"><h1 style="font-family:Castellar; font:bold; color:black ">NEWS</h1></asp:HyperLink></td>
        </tr>
    </table>

    <table style="height: 173px; width: 100%">
        <tr>
            <td class="col-sm-6" style="background-image: url(/images/Treasureparcel.jpg); background-size: auto; width: 50%; text-align: center; left: 0px; top: 0px; height: 284px; border: solid">
                <asp:HyperLink ID="HypLinkPreOrder" runat="server" NavigateUrl="~/PreOrderPage.aspx" BorderStyle="Inset" BorderColor="SeaGreen" BackColor="maroon" ><h1 style="font:bolder; color:black; font-family:Castellar;">GET THE GAME</h1></asp:HyperLink>
            </td>
            <td class="col-sm-6" style="background-image:url(/images/paint01.jpg); width: 50%; text-align: center; border: solid; border-style: groove">
                <asp:HyperLink ID="HypLinkGallery" runat="server" NavigateUrl="~/Gallery.aspx" BorderStyle="Inset" BorderColor="SeaGreen" BackColor="maroon"><h1 style="font:bolder; color:black; font-family:'Californian FB'">GALLERY</h1></asp:HyperLink>
            </td>
        </tr>
    </table>




</asp:Content>
