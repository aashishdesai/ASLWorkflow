using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
   public class EmployeeSearchDTO

    {
       public EmployeeSearchDTO(string id, string name)
        {

            this.id = id;
            this.name = name;
           

        }

        public string id { get; set; }
        
        public string name { get; set; }
       

    }
}
