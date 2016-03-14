<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Fortune._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Вас приветствует однорукий бандит !</h1>
                <h2>Регистрируйся и зарабатывай !!!</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>Описание: </h2>
    <p id="opisanie">
        Вас приветствует однорукий бандит ! Правила очень просты. Игра начинается, когда вы вносите определённую сумму.
        За каждую нажатую кнопку "GO" у вас снимается 5$. Дойдя до нуля, вы считаетесь банкротом и игра окончена. 
        Цель игры - зарабатывать на удаче! Требуется, чтобы на экране были в ряд выстроены три одинаковых числа от 1 до 7. 
        За каждое совпадение, вам зачисляется 100 очков!!! Если в ряд выстроились три семёрки - мы вас поздравляем !
        Вы сорвали JackPot и вам зачисляется 1000$ !!! Если в ряд выстроены три тройки - то это Cherry Bomb, выигрыш от которого составляет 500$.
        Удачи !!!
    </p>
    <p id="warning_to_no_login">
        Игра доступна только зарегестрированным пользователям !
    </p>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate></AnonymousTemplate>
        <LoggedInTemplate>
            <asp:Button ID="go_to_play" runat="server" Text="Играть >>" OnClick="go_to_play_Click" />   
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>

