using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace gotSurvey.Models
{
    public class SurveyContext : DbContext 
    {
        public SurveyContext() : base("name=myconn")
        {
            Database.SetInitializer<SurveyContext>(new DropCreateDatabaseAlways<SurveyContext>());
        }
        public virtual DbSet<Submission> Submissions { get; set; }
    }
}