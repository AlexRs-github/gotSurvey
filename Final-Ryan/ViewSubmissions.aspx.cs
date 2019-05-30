using Final_Ryan.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Ryan
{
    public partial class ViewSubmissions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            using (SurveyContext context = new SurveyContext())
            {

                var query = context.Submissions.ToList();
                foreach (Submission s in query)
                {
                    litSubmissions.Text = litSubmissions.Text + $"<tr><td>{s.FirstName}</td><td>{s.FavChar1}</td><td>{s.FavChar2}</td><td>{s.Locale2}</td><td>{s.Locale1}</td>";
                }
            }
        }
    }
}