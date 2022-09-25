<%@ Page Title="" Language="C#" MasterPageFile="~/InfoBD.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="InfoBD.com.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="main" class="wrapper">
				<div class="container">

					<header class="major special">
						<h2>Admin Panel</h2>
					</header>

                    <ul class="actions">
						<li>
							<a href="AddPolice.aspx" class="button alt">Bangladesh Police Information</a>
						</li>
					</ul>

                    <ul class="actions">
						<li>
							<a href="AddRab.aspx" class="button alt">Rapid Action Battalion Information</a>
						</li>
					</ul>

                    <ul class="actions">
						<li>
							<a href="AddFire.aspx" class="button alt">Bangladesh Fire Service Information</a>
						</li>
					</ul>

                    <ul class="actions">
						<li>
							<a href="AddHospital.aspx" class="button alt">Bangladesh Hospitals Information</a>
						</li>
					</ul>

                    <ul class="actions">
						<li>
							<a href="ViewInfo.aspx" class="button alt">View Given Information</a>
						</li>
					</ul>

                    <ul class="actions">
						<li>
							<a href="Home.aspx" class="button alt">Sign Out</a>
						</li>
					</ul>

                    </div>
			</section>
</asp:Content>
