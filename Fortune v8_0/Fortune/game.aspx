<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="game.aspx.cs" Inherits="Fortune.game" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <!--Исправлять отсюда... -->
    <br />
    <div id="block_s_name_game">F O R T U N E</div>
    
        <div ID="shapka_png">
            <asp:Image ID="Image1"  runat="server" ImageUrl="~/Content/Shapka.png"  />
        </div>
        <div id="game_hello_login">
            Осторожно! Игровая зависимость!
        </div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div id="game_display">
            <div id="game_one_value">
                <asp:Label ID="first_point" runat="server" Text="-"></asp:Label>
            </div>


            <div id="game_two_value">
                <asp:Label ID="second_point" runat="server" Text="-"></asp:Label>
            </div>


            <div id="game_three_value">
                <asp:Label ID="third_point" runat="server" Text="-"></asp:Label>
            </div>
        </div>

        <div id="game_go_and_point">
            <asp:Button id="Button_GO" runat="server" Text="- - -" OnClick="Button_GO_Click" Enabled="False"/>
            <asp:Button ID="Button_newGame" runat="server" Text="N E W" OnClick="Button_newGame_Click" />
            <div id="playeer_point">
                <asp:Label ID="rezult_point" runat="server" Text="0"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="$"></asp:Label>
            </div>
            <div id="message_to_player">
                <asp:Label ID="message" runat="server" Text=""></asp:Label>
            </div>
            <div class="buttons_exit_and_newGame">
                <asp:Label ID="game_rate" runat="server" Text="Label">В С Т А В И Т Ь >>  К У П Ю Р У >>  </asp:Label>
                <asp:DropDownList ID="spisok_game_rate" runat="server" AutoPostBack="True" OnSelectedIndexChanged="spisok_rate_SelectedIndexChanged" >
                    <asp:ListItem>***</asp:ListItem>
                    <asp:ListItem>100$</asp:ListItem>
                    <asp:ListItem>200$</asp:ListItem>
                    <asp:ListItem>500$</asp:ListItem>
                    <asp:ListItem>1000$</asp:ListItem>

                </asp:DropDownList>

            </div>
        </div>
               
        <div id="red_block_game">
            >> <asp:Button ID="Button_Obnal" runat="server" Text="- - -" OnClick="Button1_Click" Enabled="false" /> << 
        </div>
        
        </ContentTemplate>
        </asp:UpdatePanel>
        <div id="table_with_rez">
            <asp:Button ID="spisok_wins" runat="server" Text="Таблица результатов >> " OnClick="spisok_wins_Click" />
        </div>
        <div id="block_pravila">
		    <p id="p_zagolovok">П Р А В И Л А</p>
		    <hr color="#000000" />
		    <p id="p_one">Вас приветствует однорукий бандит ! Правила очень просты. Игра начинается, когда вы вносите определённую сумму.
                 За каждую нажатую кнопку "GO" у вас снимается 5$. Дойдя до нуля, вы считаетесь банкротом и игра окончена. 
                 Цель игры - зарабатывать на удаче! Требуется, чтобы на экране были в ряд выстроены три одинаковых числа от 1 до 7. 
                 За каждое совпадение, вам зачисляется 100 очков!!! Если в ряд выстроились три семёрки - мы вас поздравляем !
                 Вы сорвали JackPot и вам зачисляется 1000$ !!! Если в ряд выстроены три тройки - то это Cherry Bomb, выигрыш от которого составляет 500$.
                 Удачи !!!
                 <br />
                <br />
            </p>
	    </div>
            
        <!-- До сюда -->
</asp:Content>
