using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    public class ViewWorkflowsDTO
    {
        public ViewWorkflowsDTO(string Workflow_Name, bool Inactive)
        {
            this.Workflow_Name = Workflow_Name;
            this.Inactive = Inactive;
        }

        public string Workflow_Name { get; set; }

        public bool Inactive { get; set; }

    }
}
