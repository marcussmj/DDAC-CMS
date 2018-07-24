<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Marcustp039823.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- SIGN UP SECTION -->
    <section class="clearfix signUpSection">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="signUpFormArea">
                        <div class="priceTableTitle">
                            <h2>Account Registration</h2>
                            <p>Please fill out the fields below to create your account. Your email address and information will NOT be sold or shared with any 3rd party. If you already have an account, please, <a href="Login.aspx">click here</a>.</p>
                        </div>
                        <div class="signUpForm">
                            <form method="post" action="Register.aspx?register=true">
                                <div class="formSection">
                                    <h3>Contact Information</h3>
                                    <div class="row">
                                        <div class="form-group col-xs-12">
                                            <label for="name" class="control-label">Name</label>
                                            <input type="text" class="form-control" name="name" id="name" required>
                                        </div>
                                        <div class="form-group col-xs-12">
                                            <label for="comname" class="control-label">Company Name*</label>
                                            <input type="text" class="form-control" name="comname" id="comname" required>
                                        </div>
                                        <div class="form-group col-xs-12">
                                            <label for="contact" class="control-label">Contact*</label>
                                            <input type="text" class="form-control" name="contact" id="contact" required>
                                        </div>
                                        <div class="form-group col-xs-12">
                                            <label for="pic" class="control-label">Person In Charge*</label>
                                            <input type="text" class="form-control" name="pic" id="pic" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="formSection">
                                    <h3>Account Information</h3>
                                    <div class="row">
                                        <div class="form-group col-xs-12">
                                            <label for="email" class="control-label">Email*</label>
                                            <input type="email" class="form-control" name="email" id="email" required>
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="password" class="control-label">Password*</label>
                                            <input type="password" class="form-control" name="password" id="password" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="formSection">
                                    <h3>Security Control</h3>
                                    <div class="row">
                                        <div class="form-group col-xs-12">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" required>
                                                    I agree to the <a href="terms-of-services.html">Terms of Use</a> & <a href="#">Privacy Policy</a>. Your business listing is fully backed by our 100% money back guarantee.
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group col-xs-12 mb0">
                                            <button type="submit" class="btn btn-primary">Create Account</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="formSection">
                                    <div class="cardBox">
                                        <div class="paymentMethod">
                                            <img src="img/business/paypal.png" alt="Image paypal">
                                        </div>
                                        <ul class="list-inline">
                                            <li><a href="#">
                                                <img src="img/business/visa.jpg" alt="Image card"></a></li>
                                            <li><a href="#">
                                                <img src="img/business/master-card.jpg" alt="Image card"></a></li>
                                            <li><a href="#">
                                                <img src="img/business/american-express.jpg" alt="Image card"></a></li>
                                            <li><a href="#">
                                                <img src="img/business/discover.jpg" alt="Image card"></a></li>
                                        </ul>
                                    </div>
                                    <p>We use <span>PayPal</span> to process all transactions securely. <span>Payments can be made using any major credit card, without the need for a PayPal account</span>. If you already have a PayPal account, you can also pay with PayPal funds or through your bank account. We don't keep any credit card information stored on our site. No tax is added to your order. For more information <a href="https://www.paypal.com/">www.paypal.com</a></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
