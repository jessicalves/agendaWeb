<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="agendaWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Agenda de Eventos</h1>
        <p class="lead">Escolha o serviço que você deseja: </p>
        <input class="btn btn-primary"  value="+ Novo Evento" type="button" onclick ="document.getElementById('novo-evento').click();"/>
        <a href="Cadastro.aspx" style="display: none" id="novo-evento"></a>
        <input class="btn btn-primary" id="editar-evento" value="Editar" type="button" />
        <input class="btn btn-primary" id="apagar-evento" value="Apagar" type="button" />
   
        <asp:GridView ID="gridEvento" OnPreRender="Page_Load" runat="server"></asp:GridView>
    </div>

</asp:Content>
