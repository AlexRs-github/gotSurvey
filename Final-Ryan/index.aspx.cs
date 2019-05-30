using Final_Ryan.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Ryan
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //interact with the SQL DB
                using(SurveyContext context = new SurveyContext())
                {
                    Submission submission = new Submission();
                    submission.FirstName = txtFirstName.Text;
                    submission.FavChar1 = lblFavChar1.Text;
                    submission.FavChar2 = lblFavChar2.Text;
                    submission.Locale2 = txtLocale2.Text;
                    submission.Locale1 = txtLocale1.Text;
                    context.Submissions.Add(submission);
                    context.SaveChanges();
                }

                //lblFavChar1
                lblFirstName.Text = txtFirstName.Text;
                if (Radio1.Checked)
                {
                    lblFavChar1.Text = Radio1.Text;
                } else if (Radio2.Checked)
                {
                    lblFavChar1.Text = Radio2.Text;
                }
                else if (Radio3.Checked)
                {
                    lblFavChar1.Text = Radio3.Text;
                }
                else if (Radio4.Checked)
                {
                    lblFavChar1.Text = Radio4.Text;
                }
                else if (Radio5.Checked)
                {
                    lblFavChar1.Text = Radio5.Text;
                }
                else if (Radio2.Checked)
                {
                    lblFavChar1.Text = Radio6.Text;
                }
                else if (Radio7.Checked)
                {
                    lblFavChar1.Text = Radio7.Text;
                }
                else if (Radio8.Checked)
                {
                    lblFavChar1.Text = Radio8.Text;
                }
                else if (Radio9.Checked)
                {
                    lblFavChar1.Text = Radio9.Text;
                }

                //lblFavChar2
                if (Radio10.Checked)
                {
                    lblFavChar2.Text = Radio10.Text;
                }
                else if (Radio11.Checked)
                {
                    lblFavChar2.Text = Radio11.Text;
                }
                else if (Radio12.Checked)
                {
                    lblFavChar2.Text = Radio12.Text;
                }
                else if (Radio13.Checked)
                {
                    lblFavChar2.Text = Radio13.Text;
                }
                else if (Radio14.Checked)
                {
                    lblFavChar2.Text = Radio14.Text;
                }
                else if (Radio15.Checked)
                {
                    lblFavChar2.Text = Radio15.Text;
                }
                else if (Radio16.Checked)
                {
                    lblFavChar2.Text = Radio16.Text;
                }
                else if (Radio17.Checked)
                {
                    lblFavChar2.Text = Radio17.Text;
                }
                else if (Radio18.Checked)
                {
                    lblFavChar2.Text = Radio18.Text;
                }
                txtWhere.Text = lblWhere.Text;
                lblLocale1.Text = txtLocale1.Text;
                lblLocale2.Text = txtLocale2.Text;
                pnlForm.Visible = false;
                pnlConfirm.Visible = true;
            }
        }
    }
}