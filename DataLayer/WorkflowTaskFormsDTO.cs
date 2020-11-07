using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
   public class WorkflowTaskFormsDTO
    {
       public WorkflowTaskFormsDTO(string Subject_Employee_Id, string Subject_Employee_Name, string From_Employee_Name,
            string Employee_TO, string Employee_CC, string Employee_BCC, string Subject, string Message_Box,
            string Escalate_To, string Escalate_After, string Sign_Off,
            string Cancel_By,  string Step_Screen_Id,string Workflow_Name)
        {
            
            this.Subject_Employee_Id = Subject_Employee_Id;
            this.Subject_Employee_Name = Subject_Employee_Name;
            this.From_Employee_Name = From_Employee_Name;
            this.Employee_TO = Employee_TO;
            this.Employee_CC = Employee_CC;
            this.Employee_BCC = Employee_BCC;
            this.Subject = Subject;
            this.Message_Box = Message_Box;
            this.Escalate_To = Escalate_To;
            this.Escalate_After = Escalate_After;
            this.Escalate_Timestamp = Escalate_Timestamp;
            this.Sign_Off = Sign_Off;
            this.Sign_Timestamp = Sign_Timestamp;
            this.Cancel_By = Cancel_By;
            this.Cancel_Timestamp = Cancel_Timestamp;
            this.Step_Screen_Id = Step_Screen_Id;
            this.Workflow_Name = Workflow_Name;
           
       }


       public WorkflowTaskFormsDTO(string Employee_TO, string Employee_CC, string Employee_BCC, string Subject, string Message_Box,
            string Escalate_To, string Escalate_After, string wfFormId)
       {
           this.Employee_TO = Employee_TO;
           this.Employee_CC = Employee_CC;
           this.Employee_BCC = Employee_BCC;
           this.Subject = Subject;
           this.Message_Box = Message_Box;
           this.Escalate_To = Escalate_To;
           this.Escalate_After = Escalate_After;
           this.wfFormId = wfFormId;
       }



        public string Task { get; set; }
        public string wfFormId { get; set; }
        public string Created { get; set; }
        public string Created_By { get; set; }
        public string Updated { get; set; }
        public string Updated_By { get; set; }
        public string Subject_Employee_Id { get; set; }
        public string Subject_Employee_Name { get; set; }
        public string From_Employee_Name { get; set; }
        public string Employee_TO { get; set; }
        public string Employee_CC { get; set; }
        public string Employee_BCC { get; set; }
        public string Subject { get; set; }
        public string Message_Box { get; set; }
        public string Escalate_To { get; set; }
        public string Escalate_After { get; set; }
        public string Escalate_Timestamp { get; set; }
        public string Sign_Off { get; set; }
        public string Sign_Timestamp { get; set; }
        public string Cancel_By { get; set; }
        public string Cancel_Timestamp { get; set; }
        public bool Inactive { get; set; }
        public string Audit_User { get; set; }
        public string Audit_Date { get; set; }
        public string Audit_System { get; set; }
        public string Row_Version { get; set; }
        public string Step_Screen_Id { get; set; }
        public string Workflow_Name { get; set; }
        //public bool Inactive { get; set; }
    }
}
