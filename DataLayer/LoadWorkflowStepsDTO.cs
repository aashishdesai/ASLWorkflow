using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
   public  class LoadWorkflowStepsDTO
    {
       public LoadWorkflowStepsDTO(string step_Screen_Name, string step_Id)
       {
           this.step_Screen_Name = step_Screen_Name;
           this.step_Id = step_Id;

       }

       public string step_Screen_Name { get; set; }
       public string step_Id { get; set; }


    }
}
