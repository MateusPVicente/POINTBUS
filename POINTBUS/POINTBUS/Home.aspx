﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Molde.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="POINTBUS.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img id="imagemFundo" src="img/fundo123.png">

    <div class="row" id="coisas">
        <div class="col l6 m12 s12">
            <div class="container white-text" id="discricao">
                <p class="flow-text">
                    <h4>Viaje para qualquer lugar!</h4>
                    <hr>
                    <h5>Escolha seu destino que selecionamos as melhores rotas</h5>
            </div>
        </div>
        <div class="col l6 m12 hide-on-med-and-down">
            <div class="container">
                <img src="img/destinos.png" alt="destinos" class="responsive-img">
            </div>
        </div>
    </div>

    <div class="row poluicao todo white-text " id="corPoluicao">
        <div class="col s12 m12 l6" id="corPoluicao">
            <div class="container">
                <img src="img/poluicao.png" alt="poluicao" class="responsive-img">
            </div>
        </div>
        <div class="col s12 m12 l6">
            <div class="container" id="txt">
                <p>
                    <h4 class="responsive-text ">A poluição já está causando problemas
                    </h4>
                </p>
                <p>
                    <h6 class="responsive-text  ">Atualmente as doenças respiratórias estão cada vez mais frequentes e tendem a piorar se os hábitos não mudarem.
                    </h6>
                </p>
            </div>
        </div>
    </div>
    <div class="row poluicao todo white-text" id="corMundo">
        <div class="col s12 m12 l6">
            <div class="container" id="txt">
                <p>
                    <h4>Os ônibus são uma das soluções mais simples
                    </h4>
                </p>
                <p>
                    <h6>Pequenas mudanças nos hábitos podem ser cruciais para a concientização e a mudança em dessa realidade.
                            <br>
                        Comece já a mudar seus hábitos!
                    </h6>
                </p>
            </div>
        </div>
        <div class="col s12 m12 l6 ">
            <div class="container center">
                <img src="img/mundoLindo.png" alt="poluicao" class="responsive-img">
            </div>
        </div>
    </div>

    <div class="row flow-text" id="info">
        <div class="col l6 m12 s12 container">
            <div class="container center" id="onibus">
                <img src="img/iconeLampada.png" alt="destinos" class="responsive-img">
            </div>
        </div>
        <div class="col l6 m12 s12">
            <!-- <div class="container responsive-text"> -->
            <p>
                <h4>Vantagens do uso de ônibus: </h4>
            </p>

            <p>
                <h6>
                    <i class="material-icons tiny">radio_button_checked
                    </i>

                    Ajuda na diminuição a poliução urbana;
                </h6>
            </p>
            <p>
                <h6>
                    <i class="material-icons tiny">radio_button_checked</i> Reduz a probabilidade de acidentes de trânsito;
                </h6>
            </p>

            <p>
                <h6>
                    <i class="material-icons tiny">radio_button_checked</i> Menor ocupação do espaço urbano;
                </h6>
            </p>

            <p>
                <h6>
                    <i class="material-icons tiny">radio_button_checked</i>

                    Maior economia;
                </h6>
            </p>
            <p>
                <h6>
                    <i class="material-icons tiny">radio_button_checked</i>

                    Facilita a mobilidade no trânsito;
                </h6>
            </p>
            <p>
                <h6>
                    <i class="material-icons tiny">radio_button_checked</i>

                    Maior conhecimento do espaço público
                </h6>
            </p>
        </div>
    </div>

    <div class="row blue-grey lighten-5" id="passoApasso">
        <div class="col l4 m4 s12">
            <div class="container center">
                <img src="img/celular.png" alt="celular" class="responsive-img" id="cel">
            </div>

            <p>
                <h5 class="center">Cadastre-se</h5>
            </p>
            <p>
                <h6>Com seu login, você tem acesso aos seus destinos anteriores mais fácil e rapido.</h6>
            </p>
        </div>
        <div class="col l4 m4 s12">
            <div class="container center">
                <img src="img/iconeLocation.png" alt="iconeLocation" class="responsive-img">
            </div>
            <p>
                <h5 class="center">Escolha o destino</h5>
            </p>
            <p>
                <h6>Com o destino escolhido, escolheremos a maneira masi rápida de chegar a ele.</h6>
            </p>
        </div>

        <div class="col l4 m4 s12">
            <div class="container center">
                <img src="img/passes.png" alt="passes" class="responsive-img">
            </div>
            <p>
                <h5 class="center">Boa Viagem!</h5>
            </p>
            <p>
                <h6>Não esqueça seu passe para viajar em segurança para onde quiser.</h6>
            </p>
        </div>
    </div>
</asp:Content>
