//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Freelancer_Marketplace.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class user_profiles
    {
        public int profile_id { get; set; }
        public int user_id { get; set; }
        public string bio { get; set; }
        public string portfolio { get; set; }
        public string full_name { get; set; }
        public string location { get; set; }
        public string skills { get; set; }
        public string contact_information { get; set; }
        public string social_media_links { get; set; }
    
        public virtual usersdata usersdata { get; set; }
        public virtual usersdata usersdata1 { get; set; }
        public virtual usersdata usersdata2 { get; set; }
        public virtual usersdata usersdata3 { get; set; }
    }
}
