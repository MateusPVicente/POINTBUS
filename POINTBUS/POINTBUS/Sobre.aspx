<%@ Page Title="" Language="C#" MasterPageFile="~/Molde.Master" AutoEventWireup="true" CodeBehind="Sobre.aspx.cs" Inherits="POINTBUS.Sobre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br />  <br /> <br /> 
    <div class="row ">
    <div class="col l1"></div>

      <div class="card large col l4 m12 s12">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="img/rua.png">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Desenvolvedores<i class="material-icons right">more_vert</i></span>
          <p><a href="#">Pagina inicial</a></p>
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
          <p><a href="#">Cadastre-se</a></p>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4">A Ideia e os Objetivos<i class="material-icons right">close</i></span>
          <p>O POINTBUS foi pensado como um projeto para localizar o transporte publico (onibus) desejado pelo usuario para poder se organizar. Os principais objetivos deste projeto é facilitar o uso dos transportes publicos num pais onde estes sao desvalorizados, e também, ajudar o meio ambiente.</p>
        </div>
      </div>

    <div class="col l1"></div>
    </div>

    <div id="oi"></div>
   <%--                   GRÁFICO DE PARETO                                --%>
    <div id="chartContainer" style="height: 500px; width: 100%;"></div>
    <script>
        window.onload = function () {

            var chart = new CanvasJS.Chart("chartContainer", {
                title: {
                    text: "Gráfico de Pareto"
                },
                axisY: {
                    title: "Numero de erros",
                    lineColor: " #ff9800",
                    tickColor: " #ff9800",
                    labelFontColor: " #ff9800"
                },
                axisY2: {
                    title: "Porcentagem",
                    suffix: "%",
                    lineColor: "#ad1457",
                    tickColor: "#ad1457 ",
                    labelFontColor: "#ad1457"
                },
                data: [{
                    type: "column",
                    color: "#ff9800",
                    dataPoints: [
                        { label: "Redirecionamento", y: 35 },
                        { label: "Conexão com o banco", y: 23 },
                        { label: "Lógica", y: 15 },
                        { label: "Conversão de linguagem", y: 8 },
                        { label: "Implementação", y: 5 },
                        { label: "Dados Truncados", y: 5 },
                    ]
                }]
            });
            chart.render();
            createPareto();

            function createPareto() {
                var dps = [];
                var yValue, yTotal = 0, yPercent = 0;

                for (var i = 0; i < chart.data[0].dataPoints.length; i++) {
                    yTotal += chart.data[0].dataPoints[i].y;
                }

                for (var i = 0; i < chart.data[0].dataPoints.length; i++) {
                    yValue = chart.data[0].dataPoints[i].y;
                    yPercent += (yValue / yTotal * 100);
                    dps.push({ label: chart.data[0].dataPoints[i].label, color: "#ad1457", y: yPercent });
                }

                chart.addTo("data", { type: "line", color: "#ad1457", yValueFormatString: "0.##\"%\"", dataPoints: dps });
                chart.data[1].set("axisYType", "secondary", false);
                chart.axisY[0].set("maximum", yTotal);
                chart.axisY2[0].set("maximum", 100);
            }

        }
    </script>
        </div>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</asp:Content>
