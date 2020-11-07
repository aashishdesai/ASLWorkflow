using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    public class WorkflowTaskFormStatusesDTO
    {
        public WorkflowTaskFormStatusesDTO(string Subject_Employee_Name, string From_Employee_Name, int Employee_To, int Employee_CC, int Employee_BCC, string Subject, string Message_Box, int Escalate_To, int Escalate_After, string Sign_Off, string Cancel_By, bool Inactive)
        {

            this.Subject_Employee_Name = Subject_Employee_Name;
            this.From_Employee_Name = From_Employee_Name;
            this.Escalate_To = Employee_To;
            this.Employee_CC = Employee_CC;
            this.Employee_BCC = Employee_BCC;
            this.Subject = Subject;
            this.Message_Box = Message_Box;
            this.Escalate_To = Escalate_To;
            this.Escalate_After = Escalate_After;
            this.Sign_Off = Sign_Off;
            this.Cancel_By = Cancel_By;
            this.Inactive = Inactive;
        }



        public int Id { get; set; }
        public int Workflow_Instance { get; set; }
        public int Ref_Id { get; set; }
        public DateTime Created { get; set; }
        public int Created_By { get; set; }
        public DateTime Updated { get; set; }
        public int Updated_By { get; set; }
        public string Subject_Employee_Id { get; set; }
        public string Subject_Employee_Name { get; set; }
        public string From_Employee_Name { get; set; }
        public int Employee_To { get; set; }
        public int Employee_CC { get; set; }
        public int Employee_BCC { get; set; }
        public string Subject { get; set; }
        public string Message_Box { get; set; }
        public int Escalate_To { get; set; }
        public int Escalate_After { get; set; }
        public DateTime Escalate_Timestamp { get; set; }
        public string Sign_Off { get; set; }
        public DateTime Sign_Timestamp { get; set; }
        public string Cancel_By { get; set; }
        public DateTime Cancel_Timestamp { get; set; }
        public bool Inactive { get; set; }
        public string Status { get; set; }
        public string Audit_User { get; set; }
        public DateTime Audit_Date { get; set; }
        public string Audit_System { get; set; }
        public DateTime Row_Version { get; set; }
    }
}
