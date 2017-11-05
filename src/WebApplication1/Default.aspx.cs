using System;
using System.IO;
using System.Linq;
using System.Reflection;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = string.Empty;

            if (!IsPostBack)
            {
                var path = Path.GetDirectoryName(Assembly.GetExecutingAssembly().GetName().CodeBase);
                path = path.Substring(6);
                string yourpath = path + @"\Assessment.csv";
                var Lines = File.ReadLines(yourpath);
                var CSV = from line in Lines
                          select (line.Split(',').ToArray());

                foreach (var line in Lines)
                {
                    str += line.ToString();
                }

                topDiv.InnerHtml = str;
            }
        }
    }
}