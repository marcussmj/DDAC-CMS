<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Marcustp039823.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%while (sdr.Read())
        { %>
    <section class="clearfix bg-dark listingSection">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">

                        <div class="dashboardBoxBg mb30">
                            <div class="profileIntro paraMargin">
                                <h3>View Profile</h3>
                                <p>you can view your profile here</p>
                                <div class="row">
                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="tuesdayTime">Customer Name</label>
                                        <input type="text" name="date" value="<%=sdr["Name"] %>" class="form-control" id="tuesdayTime" required readonly>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="wednesdayTime">Company Name</label>
                                        <input type="text" class="form-control" value="<%=sdr["Company_Name"] %>" id="cost" name="cost" required readonly>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="thrusdayTime">Contact</label>
                                        <input type="text" class="form-control" value="<%=sdr["Contact"] %>" name="arrport" required readonly>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="fridayTime">Person In Charge</label>
                                        <input type="text" value="<%=sdr["Per_I_C"] %>" class="form-control" required readonly>
                                    </div>


                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </section>
    <%} %>
</asp:Content>