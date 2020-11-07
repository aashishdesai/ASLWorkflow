using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
   public class WorkflowStepsDTO
    {
         public WorkflowStepsDTO()
        {
           
        }
        public int Id { get; set; }
        public int Workflow { get; set; }
        public int Step_Screen { get; set; }
        public int Step_Number { get; set; }
        public DateTime Created { get; set; }
        public int Created_By { get; set; }
        public DateTime Updated { get; set; }
        public int Updated_By { get; set; }
        public char Inactive { get; set; }
        public string Audit_User { get; set; }
        public DateTime Audit_Date { get; set; }
        public string Audit_System { get; set; }
        public DateTime Row_Version { get; set; }
    }
}
