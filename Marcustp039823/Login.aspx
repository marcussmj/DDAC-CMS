<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Marcustp039823.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- LOGIN SECTION -->
<section class="clearfix loginSection">
	<div class="container">
		<div class="row">
			<div class="center-block col-md-5 col-sm-6 col-xs-12">
				<div class="panel panel-default loginPanel">
					<div class="panel-heading text-center">log in</div>
					<div class="panel-body">
						<form class="loginForm" method="post" action="Login.aspx?login=true">
							<div class="form-group">
								<label for="email">Email *</label>
								<input type="email" name="email" class="form-control" id="email">
								<p class="help-block">Enter your Email</p>
							</div>
							<div class="form-group">
								<label for="userPassword">Password *</label>
								<input type="password" class="form-control" name="password" id="userPassword">
								<p class="help-block">Enter the password that accompanies your email.</p>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary pull-left">Log In</button>
								<a href="Forgot_Password.aspx" class="pull-right link">Fogot Password?</a>
							</div>
						</form>
					</div>
					<div class="panel-footer text-center">
						<p>Not a member yet? <a href="Register.aspx" class="link">Register</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</asp:Content>
