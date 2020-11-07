using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    public class WorkflowReportDTO
    {
        public WorkflowReportDTO()
        {


        }
        public WorkflowReportDTO(string created, string created_By, string subject_Employee_Id, string from_Employee_Name, string employee_TO, string employee_CC, string employee_BCC, string subject, string message_Box, string escalate_To, string escalate_After, string sign_Off, string cancel_By, string step_screen_Id, string escalate_Timestamp, string signoff_Timestamp, string cancel_Timestamp)
        {

            this.Created = created;
            this.Created_By = created_By;
            this.Subject_Employee_Id = subject_Employee_Id;
            this.From_Employee_Name = from_Employee_Name;
            this.Employee_TO = employee_TO;
            this.Employee_CC = employee_CC;
            this.Employee_BCC = employee_BCC;
            this.Subject = subject;
            this.Message_Box = message_Box;
            this.Escalate_To = escalate_To;
            this.Escalate_After = escalate_After;
            this.Sign_Off = sign_Off;
            this.Cancel_By = cancel_By;
            this.Step_Screen_Id = step_screen_Id;
            this.Escalate_Timestamp = escalate_Timestamp;
            this.Signoff_Timestamp = signoff_Timestamp;
            this.Cancel_Timestamp = cancel_Timestamp;
        }



        public string Created { get; set; }
        public string Created_By { get; set; }
        public string Subject_Employee_Id { get; set; }
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
        public string Signoff_Timestamp { get; set; }
        public string Cancel_By { get; set; }
        public string Cancel_Timestamp { get; set; }
        public bool Inactive { get; set; }
        public string Audit_User { get; set; }
        public DateTime Audit_Date { get; set; }
        public string Audit_System { get; set; }
        public DateTime Row_Version { get; set; }
        public string Step_Screen_Id { get; set; }
        public string Workflow_Name { get; set; }
        //public bool Inactive { get; set; }
    }
}