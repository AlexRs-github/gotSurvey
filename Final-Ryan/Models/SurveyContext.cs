using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Final_Ryan.Models
{
    public class SurveyContext : DbContext 
    {
        public SurveyContext() : base("name=myconn")
        {
            Database.SetInitializer<SurveyContext>(new DropCreateDatabaseIfModelChanges<SurveyContext>());
        }
        public virtual DbSet<Submission> Submissions { get; set; }
    }
}