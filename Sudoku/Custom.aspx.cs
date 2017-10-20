using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sudoku
{
    public partial class Custom : System.Web.UI.Page
    {
        protected TextBox[,] puzzle;
        public const int SIZE = 9;

        protected void Page_Load(object sender, EventArgs e)
        {
            puzzle = new TextBox[SIZE, SIZE];
        }
    }
}