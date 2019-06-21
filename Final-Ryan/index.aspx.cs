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
                //Init these first
                string FavRadio1 = "";
                string FavRadio2 = "";

                //lblFirstName
                lblFirstName.Text = txtFirstName.Text;

                //lblWhere
                lblWhere.Text = txtWhere.Text;

                //lblRate1
                lblRate1.Text = drpRate1.Text;

                //lblRate2
                lblRate2.Text = drpRate2.Text;

                //lblFavChar1
                if (Radio1.Checked)
                {
                    lblFavChar1.Text = Radio1.Text;
                    FavRadio1 = Radio1.Text;
                } else if (Radio2.Checked)
                {
                    lblFavChar1.Text = Radio2.Text;
                    FavRadio1 = Radio2.Text;
                }
                else if (Radio3.Checked)
                {
                    lblFavChar1.Text = Radio3.Text;
                    FavRadio1 = Radio3.Text;
                }
                else if (Radio4.Checked)
                {
                    lblFavChar1.Text = Radio4.Text;
                    FavRadio1 = Radio4.Text;
                }
                else if (Radio5.Checked)
                {
                    lblFavChar1.Text = Radio5.Text;
                    FavRadio1 = Radio5.Text;
                }
                else if (Radio2.Checked)
                {
                    lblFavChar1.Text = Radio6.Text;
                    FavRadio1 = Radio6.Text;
                }
                else if (Radio7.Checked)
                {
                    lblFavChar1.Text = Radio7.Text;
                    FavRadio1 = Radio7.Text;
                }
                else if (Radio8.Checked)
                {
                    lblFavChar1.Text = Radio8.Text;
                    FavRadio1 = Radio8.Text;
                }
                else if (Radio9.Checked)
                {
                    lblFavChar1.Text = Radio9.Text;
                    FavRadio1 = Radio9.Text;
                }
                
                //lblFavChar2
                if (Radio10.Checked)
                {
                    lblFavChar2.Text = Radio10.Text;
                    FavRadio2 = Radio2.Text;
                }
                else if (Radio11.Checked)
                {
                    lblFavChar2.Text = Radio11.Text;
                    FavRadio2 = Radio11.Text;
                }
                else if (Radio12.Checked)
                {
                    lblFavChar2.Text = Radio12.Text;
                    FavRadio2 = Radio12.Text;
                }
                else if (Radio13.Checked)
                {
                    lblFavChar2.Text = Radio13.Text;
                    FavRadio2 = Radio13.Text;
                }
                else if (Radio14.Checked)
                {
                    lblFavChar2.Text = Radio14.Text;
                    FavRadio2 = Radio14.Text;
                }
                else if (Radio15.Checked)
                {
                    lblFavChar2.Text = Radio15.Text;
                    FavRadio2 = Radio15.Text;
                }
                else if (Radio16.Checked)
                {
                    lblFavChar2.Text = Radio16.Text;
                    FavRadio2 = Radio16.Text;
                }
                else if (Radio17.Checked)
                {
                    lblFavChar2.Text = Radio17.Text;
                    FavRadio2 = Radio17.Text;
                }
                else if (Radio18.Checked)
                {
                    lblFavChar2.Text = Radio18.Text;
                    FavRadio2 = Radio18.Text;
                }

                //interact with the SQL DB
                using (SurveyContext context = new SurveyContext())
                {
                    Submission submission = new Submission();
                    submission.FirstName = txtFirstName.Text;
                    submission.Where = txtWhere.Text;
                    submission.FavChar1 = FavRadio1;
                    submission.FavChar2 = FavRadio2;
                    submission.Locale1 = txtLocale1.Text;
                    submission.Locale2 = txtLocale2.Text;
                    submission.Rating1 = drpRate1.Text;
                    submission.Rating2 = drpRate2.Text;
                    context.Submissions.Add(submission);
                    try
                    {
                        context.SaveChanges();
                    }
                    catch (Exception exception)
                    {
                        lblError.Text = exception.ToString();
                    }
                }

                lblLocale1.Text = txtLocale1.Text;
                lblLocale2.Text = txtLocale2.Text;
                pnlForm.Visible = false;
                pnlConfirm.Visible = true;
            }
        }
    }
}