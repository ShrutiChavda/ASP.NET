using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(TextBox1.Text);
            int b = Convert.ToInt32(TextBox2.Text);
            int c = a + b;
            Response.Write(c);
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}