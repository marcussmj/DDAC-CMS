<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Staff_Home.aspx.cs" Inherits="Marcustp039823.Staff_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="clearfix bg-dark listyPage">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="dashboardPageTitle">
                        <h2>My Shippings</h2>
                    </div>
                    <div class="table-responsive" data-pattern="priority-columns">
                        <table class="table listingsTable">
                            <thead>
                                <tr class="rowItem">
                                    <th data-priority="">Shipping Id</th>
                                    <th data-priority="1">Departure Port</th>
                                    <th data-priority="6">Arrival Port</th>
                                    <th data-priority="2">Request Date</th>
                                    <th data-priority="3">Status</th>
                                    <th data-priority="4">Control</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    while (sdr.Read())
                                    {
                                %>
                                <tr class="rowItem">
                                    <td><%=sdr["ShID"] %></td>
                                    <td><%=sdr["depport"] %></td>
                                    <td><%=sdr["arrport"] %></td>
                                    <td><%=sdr["Date_Shipping"] %></td>
                                    <td><span class="label label-warning"><%=sdr["Status"] %></span></td>

                                    <td><a class="btn-submit" href="Staff_Edit_Shipping.aspx?edit=<%=sdr["ShID"] %>&curport=<%=currentportid %>&shipdepport=<%=sdr["Dep_PID"] %>">Edit</a></td>
                                </tr>
                                <%} %>

                            </tbody>
                        </table>
                    </div>
                    <div class="paginationCommon blogPagination text-center">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
                                    </a>
                                </li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
