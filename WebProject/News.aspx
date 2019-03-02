<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="WebProject.WebForm3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style="background-color: darkred; width: 700px; border: thick; border-color: white; border-style: groove">

        <div class="row" style="margin: 15px; text-align: center;">
            <h1 style="font-family: Castellar">NEWS</h1>
        </div>


        <div class="row" style="margin: 10px; text-align: center;">
        </div>


        <div class="row">
            <div class="col-md-6">
                <h5 style="font-family: Castellar">April 30th, 2017</h5>
                <p>
                    Good news folks!  We've managed to get the
                website up and running.  The game is soon to 
                enter is Alpha, which will be available on our
                website when it releases.  
                </p>
            </div>

            <div class="col-md-6">
                <img src="images/scroll01.jpg"  width="300" height="200"/>
            </div>

            <div class="row" style="margin: 20px; text-align: center;">
            </div>

            <div class="row">
                <div class="col-md-6">
                    <h5 style="font-family: Castellar">April 22nd, 2017</h5>
                    <p>
                        Our twitter is officially up and
                        running.  Be sure to follow us
                        there for the latest developments
                        regarding our progress.
                    </p>
                    <asp:LinkButton ID="lnkbtnToTwitter" runat="server" OnClick="lnkbtnToTwitter_Click">Start tweetin us!</asp:LinkButton>
                </div>

                <div class="col-md-6">
                    <img src="images/twitter.png" width="300" height="200" />
                </div>


            </div>

            <div class="row" style="margin: 20px; text-align: center;">
            </div>

        </div>
    </div>

</asp:Content>
