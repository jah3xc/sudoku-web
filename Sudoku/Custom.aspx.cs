using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sudoku
{
    public partial class Custom : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "key2", "alert('hello')", true);
            Button btn_sender = (Button)sender;
            if (btn_sender.ID == "submitButton")
            {
                //do stuff
            }
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "key2", "alert('hello')", true);

        }

    }


}