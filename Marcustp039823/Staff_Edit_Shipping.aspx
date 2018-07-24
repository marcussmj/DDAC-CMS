<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Staff_Edit_Shipping.aspx.cs" Inherits="Marcustp039823.Staff_Edit_Shipping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%while (sdr.Read())
        { %>
    <section class="clearfix bg-dark listingSection">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <form action="Staff_Edit_Shipping.aspx?add=true&edit=<%=sdr["ShID"] %>&curport=<%=currentportid %>&shipdepport=<%=sdr["Dep_PID"] %>" method="post" class="listing__form">
                        <div class="dashboardBoxBg mb30">
                            <div class="profileIntro paraMargin">
                                <h3>Edit Shipments</h3>
                                <p>you can edit shipments here</p>
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

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="sundayTime">Approval</label>
                                        <%if (sdr["Status"].ToString() == "Pending" || sdr["Status"].ToString() == "Arriving")
                                            { %>
                                        <select name="approval" class="form-control" required>
                                            <option></option>
                                            <%if (shipdepid == currentportid)
                                                { %>
                                            <%if (sdr["Status"].ToString() == "Pending")
                                                { %>
                                            <option value="Approved">Approved</option>
                                            <option value="Declined">Declined</option>
                                            <%} %>
                                            <%if (sdr["Status"].ToString() == "Arriving")
                                                { %>
                                            <option disabled>arriving</option> 
                                            <%} %>
                                            <%}
                                                else
                                                { %>
                                            <%if (sdr["Status"].ToString() == "Arriving")
                                                { %>
                                            <option value="Received">Received</option>
                                            <%} %>
                                            <%if (sdr["Status"].ToString() == "Pending")
                                                { %>
                                            <option disabled>Waiting for departure approval</option>
                                            <%} %>
                                            <%} %>
                                        </select>
                                        <%}
                                        else
                                        { %>
                                        <%if (sdr["Status"].ToString() == "Approved")
                                            { %>
                                        <input type="text" class="form-control" value="Wait for Container Assignation" disabled />
                                        <%} %>
                                        <%if (sdr["Status"].ToString() == "Declined")
                                            { %>
                                        <input type="text" class="form-control" value="Shipment Declined" disabled />
                                        <%if (sdr["Status"].ToString() == "Received")
                                            { %>
                                        <input type="text" class="form-control" value="Shipment already delivered" disabled />
                                        <%} %>
                                        <%} %>
                                        <%} %>
                                    </div>

                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="sundayTime">Container </label>
                                        <%if (shipdepid == currentportid)
                                            { %>
                                        <%if (sdr["Status"].ToString() == "Approved" || sdr["Status"].ToString() == "Declined")
                                            { %>
                                        <select name="conid" class="form-control" required>
                                            <option></option>
                                            <%
                                                foreach (var pair in allcontainers)
                                                {
                                            %>
                                            <option value="<%=pair.Key %>"><%=pair.Value %></option>
                                            <%} %>
                                        </select>
                                        <%}else{ %>
                                        <%if(sdr["Status"].ToString() == "Arriving" || sdr["Status"].ToString() == "Received"){ %>
                                        <input type="text" class="form-control" value="<%=sdr["Container_ID"] %>" name="conid" required readonly>
                                        <%}else{ %>
                                         <input type="text" class="form-control" value="waiting for approval" disabled>
                                        <%} %>
                                        <%} %>
                                        <%}
                                            else
                                            { %>
                                        <input type="text" class="form-control" value="<%=sdr["Container_ID"] %>" name="conid" required readonly>
                                        <%} %>
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
    <%} %>
</asp:Content>
