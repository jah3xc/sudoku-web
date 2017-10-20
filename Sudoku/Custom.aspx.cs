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

        }

        protected void btn_Clicked(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "key2", "alert('hello')", true);
        }
    }
}