using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fortune
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        protected void go_to_play_Click(object sender, EventArgs e)
        {
            if (userIsAdmin())
                Response.Redirect("BanList.aspx");
            else
            {
                if (!Buned())
                    Response.Redirect("game.aspx");
                else
                    Response.Write("<script>window.alert('kВы забанены');</script>");
            }


        }
        
        protected bool Buned()
        {
            string name = Context.User.Identity.Name;
            var bd = new BanListLINQDataContext();
            var bd_item = (from p in bd.BanList
                           where p.name == name
                           select new { name = p.name }
                          ).SingleOrDefault();
            if (bd_item == null)
                return false;
            return true;
        }

        protected bool userIsAdmin()
        {
            string player_name = Context.User.Identity.Name;
            if (player_name == "admin")
                return true;
            return false;
        }

        /*
        protected void Button_GO_Click(object sender, EventArgs e)
        {
            spisok_game_rate.Enabled = false;
            Random rnd = new Random();
            int rd_first = rnd.Next(1, 8);
            int rd_second = rnd.Next(1, 8);
            int rd_third = rnd.Next(1, 8);

            string str_rd_first = rd_first.ToString();
            string str_rd_second = rd_second.ToString();
            string str_rd_third = rd_third.ToString();
            first_point.Text = str_rd_first;
            second_point.Text = str_rd_second;
            third_point.Text = str_rd_third;

            int rez_point = Convert.ToInt32(rezult_point.Text);

            if ((rd_first == rd_second) && (rd_second == rd_third) && (rd_first == rd_third))
            {
                if ((rd_first == 7) && (rd_second == 7) && (rd_third == 7))
                {
                    rez_point = rez_point + 1000;
                    rezult_point.Text = rez_point.ToString();
                    message.Text = "Jackpot!!! +1000$";
                }

                if ((rd_first == 3) && (rd_second == 3) && (rd_third == 3))
                {
                    rez_point = rez_point + 500;
                    rezult_point.Text = rez_point.ToString();
                    message.Text = "Cherry boom!!! +500$";
                }

                if (!((rd_first == 7) && (rd_second == 7) && (rd_third == 7)) &&
                    !((rd_first == 3) && (rd_second == 3) && (rd_third == 3)))
                {
                    rez_point = rez_point + 100;
                    rezult_point.Text = rez_point.ToString();
                    message.Text = "You win ! +100$";
                }
            }
            else
            {
                rez_point = rez_point - 5;
                rezult_point.Text = rez_point.ToString();
                message.Text = "You lose ! -5$";
                if (rez_point == 0)
                {
                    message.Text = "Game over !!!";
                    Button_GO.Enabled = false;
                    Button_GO.Text = "- - -";
                }
            }
        }

        protected void Button_newGame_Click(object sender, EventArgs e)
        {
            first_point.Text = "-";
            second_point.Text = "-";
            third_point.Text = "-";
            rezult_point.Text = "0";
            message.Text = "";
            Button_GO.Enabled = false;
            Button_GO.Text = "- - -";
            spisok_game_rate.Enabled = true;
            spisok_game_rate.SelectedIndex = 0;
        }

        protected void spisok_rate_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (spisok_game_rate.SelectedIndex == 0)
            {
                rezult_point.Text = "0";
                Button_GO.Enabled = false;
                Button_GO.Text = "- - -";
            }
            if (spisok_game_rate.SelectedIndex == 1)
            {
                rezult_point.Text = "100";
                Button_GO.Enabled = true;
                Button_GO.Text = "G O";
            }
            if (spisok_game_rate.SelectedIndex == 2)
            {
                rezult_point.Text = "200";
                Button_GO.Enabled = true;
                Button_GO.Text = "G O";
            }
            if (spisok_game_rate.SelectedIndex == 3)
            {
                rezult_point.Text = "500";
                Button_GO.Enabled = true;
                Button_GO.Text = "G O";
            }
            if (spisok_game_rate.SelectedIndex == 4)
            {
                rezult_point.Text = "1000";
                Button_GO.Enabled = true;
                Button_GO.Text = "G O";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (fortune_dataDataContext bd = new fortune_dataDataContext())
            {

                string player_name = Context.User.Identity.Name;
                int player_money = Convert.ToInt32(rezult_point.Text);

                Win new_win = new Win()
                {
                    name = player_name,
                    money = player_money,
                };

                bd.Wins.InsertOnSubmit(new_win);
                bd.SubmitChanges();
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Records.aspx");
        }

*/      
    }
}