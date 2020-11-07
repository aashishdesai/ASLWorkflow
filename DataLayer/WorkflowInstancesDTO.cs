using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    public class WorkflowInstancesDTO
    {
        public int Id { get; set; }
        public int Ref_Id { get; set; }
        public DateTime Started { get; set; }
        public DateTime Updated { get; set; }
        public string Status { get; set; }
        public DateTime Row_Version { get; set; }
        public string Audit_User { get; set; }
        public DateTime Audit_Date { get; set; }
        public string Audit_System { get; set; }

    }
}
