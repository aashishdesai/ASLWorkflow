using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    public class LoadWorkflowTaskDTO
    {

        public  LoadWorkflowTaskDTO(string emp_Name, string wftask_Id)
        {
            this.emp_Name = emp_Name;
            this.wftask_Id = wftask_Id;
        
        
        
        }
        public string emp_Name { get; set; }

        public string wftask_Id { get; set; }

    }
}
