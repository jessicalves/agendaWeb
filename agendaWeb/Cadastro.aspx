<%@ Page Title="Novo Evento" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="agendaWeb.Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="well well-sm" style="text-align:center">
        <h2>Cadastrando Novo Evento</h2>
    </div>

    <form>
        <div class="form-group">
            <label for="titulo">Título do Evento</label>
            <input type="text" class="form-control" id="titulo"  placeholder="Título">
            <small class="form-text text-muted">Esse será o título do seu evento.</small>
        </div>
        <div class="form-group">
            <label for="data">Data do Evento</label>
            <input type="date" class="form-control" id="data">
        </div>
        <div class="form-group">
            <label for="duracao">Duração</label>
            <input type="time" class="form-control" id="duracao">
            <small class="form-text text-muted">Informe a duração em <b>Horas</b> do seu evento.</small>
        </div>
        <button type="submit" class="btn btn-primary" id="salvar">Salvar</button>
        <button class="btn btn-secondary" type="reset" onclick="window.location.href='Default.aspx'" >Cancelar</button>
    </form>

</asp:Content>
