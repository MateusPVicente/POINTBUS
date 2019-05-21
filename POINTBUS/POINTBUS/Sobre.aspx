<%@ Page Title="" Language="C#" MasterPageFile="~/Molde.Master" AutoEventWireup="true" CodeBehind="Sobre.aspx.cs" Inherits="POINTBUS.Sobre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br /> <br /> <br /> <br /> <br /> <br />
    <div class="row">
    <div class="col l1"></div>

      <div class="card large col l4 m12 s12">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="img/rua.png">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Desenvolvedores<i class="material-icons right">more_vert</i></span>
          <p><a href="/Home.aspx">Pagina inicial</a></p>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4">Sobre os Desenvolvedores<i class="material-icons right">close</i></span>
          <p>Este projeto foi desenvolvido por dois estudantes do Colegio Tecnico de Campinas (COTUCA), Amabile Ferreira Pietrobon e Mateus de Padua Vicente.</p>
        </div>
      </div>

      <div class="col l2"></div>

      <div class="card large col l4 m12 s12">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="img/mapa.png">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">A Ideia<i class="material-icons right">more_vert</i></span>
          <p><a href="/Usuario/Cadastro">Cadastre-se</a></p>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4">A Ideia e os Objetivos<i class="material-icons right">close</i></span>
          <p>O POINTBUS foi pensado como um projeto para localizar o transporte publico (onibus) desejado pelo usuario para poder se organizar. Os principais objetivos deste projeto é facilitar o uso dos transportes publicos num pais onde estes sao desvalorizados, e também, ajudar o meio ambiente.</p>
        </div>
      </div>

    <div class="col l1"></div>
    </div>
</asp:Content>
