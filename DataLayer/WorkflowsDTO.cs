using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
   public class WorkflowsDTO
    {
  
       
        public WorkflowsDTO(string Language, string Code, string Workflow_Name, bool Inactive)
        {
           
            this.Language = Language;
            this.Code = Code;
            this.Workflow_Name = Workflow_Name;            
            this.Inactive = Inactive;
           
        }
        public string Id { get; set; }
        public string Language { get; set; }
        public string Code { get; set; }
        public string Workflow_Name { get; set; }
        public DateTime Created { get; set; }
        public string Created_By { get; set; }
        public DateTime Updated { get; set; }
        public string Updated_By { get; set; }
        public bool Inactive { get; set; }
        public string Audit_User { get; set; }
        public DateTime Audit_Date { get; set; }
        public string Audit_System { get; set; }
        public DateTime Row_Version { get; set; }
    }

}
