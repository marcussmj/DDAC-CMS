<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Cust_View_Shipping.aspx.cs" Inherits="Marcustp039823.Cust_View_Shipping" %>

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
                                <h3>View Shipments</h3>
                                <p>you can view shipments here</p>
                                <div class="row">
                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="mondayTime">Departure Port</label>
                                        <input type="text" class="form-control" value="<%=sdr["depport"] %>" name="depport" required readonly>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="tuesdayTime">Shipment Date</label>
                                        <input type="date" name="date" value="<%=sdr["Date_Shipping"] %>" class="form-control" id="tuesdayTime" required readonly>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="wednesdayTime">Estimate Cost</label>
                                        <input type="text" class="form-control" value="<%=sdr["Cost"] %>" id="cost" name="cost" required readonly>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="thrusdayTime">Arrival Port</label>
                                        <input type="text" class="form-control" value="<%=sdr["arrport"] %>" name="arrport" required readonly>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="fridayTime">Shipment Weight KG</label>
                                        <input type="number" onchange="checkcost();" value="<%=sdr["Weight"] %>" class="form-control" id="weight" name="weight" required readonly>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="saturdayTime">Estimate Duration</label>
                                        <input type="text" class="form-control" id="duration" value="<%=sdr["Duration"] %>" name="duration" required readonly>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="sundayTime">Shipment Details </label>
                                        <textarea name="details" class="form-control" required readonly><%=sdr["Details"] %></textarea>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="saturdayTime">Status</label>
                                        <input type="text" class="form-control" value="<%=sdr["Status"] %>" name="status" required readonly>
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

