using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Final_Ryan.Models
{
    public class Submission
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string FirstName { set; get; }
        [Required]
        public string Where { get; set; }
        public string FavChar1 { set; get; }
        public string FavChar2 { set; get; }
        public string Locale1 { get; set; }
        public string Locale2 { get; set; }
    }
}