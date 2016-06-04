using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fortune
{
    public partial class BanList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void GoInBane(object sender, EventArgs e)
        {
            string player_name = GridView2.SelectedRow.Cells[1].Text;
            DateTime cur_date = System.DateTime.Now;

            if (Buned(player_name))
                return;
            using (BanListLINQDataContext bd = new BanListLINQDataContext())
            {
                BanList new_win = new BanList()
                {
                    name = player_name,
                    date = cur_date,
                };

                bd.BanList.InsertOnSubmit(new_win);
                bd.SubmitChanges();
            }
            int iS = GridView2.SelectedRow.RowIndex;
            GridView1.Sort("date", SortDirection.Ascending);
        }

        protected bool Buned(string name)
        {
            var bd = new BanListLINQDataContext();
            var bd_item = (from p in bd.BanList
                           where p.name == name
                           select new { name = p.name}
                          ).SingleOrDefault();
            if (bd_item == null)
                return false;
            return true;
        }
    }
}