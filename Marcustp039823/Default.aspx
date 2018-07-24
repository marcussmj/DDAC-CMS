<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Marcustp039823.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <!-- PAGE TITLE SECTION -->
        <section class="clearfix pageTitleSection" style="background-image: url();">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="pageTitle">
                            <h2>WELCOME GUEST</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- HOW WORKS SECTION -->
        <section class="clearfix howWorksSection">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="howWorksInner">
                            <div class="row">
                                <div class="col-sm-4 col-sm-push-8 col-xs-12">
                                    <div class="howWorksImage text-right">
                                        <img src="img/works/works-big-1.png" alt="Image Works"></div>
                                </div>
                                <div class="col-sm-8 col-sm-pull-4 col-xs-12">
                                    <div class="howWorksInfo text-left">
                                        <h3>DDAC System</h3>
                                        <p>this is a system where container shipping automated. </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="howWorksInner">
                            <div class="row">
                                <div class="col-sm-4 col-xs-12">
                                    <div class="howWorksImage text-left">
                                        <img src="img/works/works-big-2.png" alt="Image Works"></div>
                                </div>
                                <div class="col-sm-8 col-xs-12">
                                    <div class="howWorksInfo text-right">
                                        <p>User 1</p>
                                        <h3>Customer</h3>
                                        <p>customer can make shipping</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="howWorksInner">
                            <div class="row">
                                <div class="col-sm-4 col-sm-push-8 col-xs-12">
                                    <div class="howWorksImage text-right">
                                        <img src="img/works/works-big-3.png" alt="Image Works"></div>
                                </div>
                                <div class="col-sm-8 col-sm-pull-4 col-xs-12">
                                    <div class="howWorksInfo text-left">
                                        <p>User 2</p>
                                        <h3>Staff</h3>
                                       <p>staff can edit shipping status</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

</asp:Content>
