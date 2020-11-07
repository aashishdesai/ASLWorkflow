using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    class WorkflowStepStatusesDTO
    {
        public int Id { get; set; }
        public int Workflow_Instance { get; set; }
        public int Ref_Id { get; set; }
        public int Step_Screen { get; set; }
        public int Step_Number { get; set; }
        public DateTime Created { get; set; }
        public int Created_By { get; set; }
        public DateTime Updated { get; set; }
        public int Updated_By { get; set; }
        public char Inactive { get; set; }
        public string Status { get; set; }
        public string Audit_User { get; set; }
        public DateTime Audit_Date { get; set; }
        public string Audit_System { get; set; }
        public DateTime Row_Version { get; set; }
    }
}
