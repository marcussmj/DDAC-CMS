<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Forgot_Password.aspx.cs" Inherits="Marcustp039823.Forgot_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="clearfix loginSection">
	<div class="container">
		<div class="row">
			<div class="center-block col-md-5 col-sm-6 col-xs-12">
				<div class="panel panel-default loginPanel">
					<div class="panel-heading text-center">Forgot Password</div>
					<div class="panel-body">
						<form class="loginForm" method="post" action="Forgot_Password.aspx?forpass=true">
							<div class="form-group">
								<label for="email">Email *</label>
								<input type="email" name="email" class="form-control" id="email">
								<p class="help-block">Enter your Email to retrieve your password</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</asp:Content>
