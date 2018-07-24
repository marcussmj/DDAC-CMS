<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Cust_Add_Shipping.aspx.cs" Inherits="Marcustp039823.Cust_Add_Shipping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="clearfix bg-dark listingSection">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <form action="Cust_Add_Shipping.aspx?add=true" method="post" class="listing__form">
                        <div class="dashboardBoxBg mb30">
                            <div class="profileIntro paraMargin">
                                <h3>Add Shipments</h3>
                                <p>you can add shipments here</p>
                                <div class="row">
                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="mondayTime">Departure Port</label>
                                        <select name="depport" onchange="checkcost();checkduration();" id="depport" class="form-control" required>
                                            <option></option>
                                            <%
                                                foreach (var pair in allports)
                                                {
                                            %>
                                            <option value="<%=pair.Key %>,<%=pair.Value %>"><%=pair.Key %></option>
                                            <%} %>
                                        </select>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="tuesdayTime">Shipment Date</label>
                                        <input type="date" name="date" class="form-control" id="tuesdayTime" required>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="wednesdayTime">Estimate Cost</label>
                                        <input type="text" class="form-control" id="cost" name="cost" required readonly>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="thrusdayTime">Arrival Port</label>
                                        <select name="arrport" onchange="checkcost();checkduration();" id="arrport" class="form-control" required>
                                            <option></option>
                                            <%
                                                foreach (var pair in allports)
                                                {
                                            %>
                                            <option value="<%=pair.Key %>,<%=pair.Value %>"><%=pair.Key %></option>
                                            <%} %>
                                        </select>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="fridayTime">Shipment Weight KG</label>
                                        <input type="number" onchange="checkcost();" class="form-control" id="weight" name="weight" required>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="saturdayTime">Estimate Duration</label>
                                        <input type="text" class="form-control" id="duration" name="duration" required readonly>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="sundayTime">Shipment Details </label>
                                        <textarea name="details" class="form-control" required></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-footer text-center">
                            <button type="submit" class="btn-submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
