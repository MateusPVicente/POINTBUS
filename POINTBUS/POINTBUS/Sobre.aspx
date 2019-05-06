<%@ Page Title="" Language="C#" MasterPageFile="~/Molde.Master" AutoEventWireup="true" CodeBehind="Sobre.aspx.cs" Inherits="POINTBUS.Sobre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="oi"></div>
    <%--                   GRÁFICO DE PARETO                                --%>
    <div class="container" id="foraDoMenu">
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
                        { label: "Lógica", y: 15 },
                        { label: "Conexão com o banco", y: 23 },
                        { label: "Implementação", y: 5 },
                        { label: "Redirecionamento", y: 35 },
                        { label: "Dados Tuncados", y: 5 },
                        { label: "Conversão de linguagem", y: 8 },
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

                chart.addTo("data", { type: "line", color: "#ad1457",yValueFormatString: "0.##\"%\"", dataPoints: dps });
                chart.data[1].set("axisYType", "secondary", false);
                chart.axisY[0].set("maximum", yTotal);
                chart.axisY2[0].set("maximum", 100);
            }

        }
    </script>
        </div>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</asp:Content>
