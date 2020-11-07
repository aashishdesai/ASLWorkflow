using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    public class LoadTaskformDTO
    {
        public  LoadTaskformDTO(string language, string workflowCode, string workflowName, int stepNo)

        {
            this.language = language;
            this.workflowCode = workflowCode;
            this.workflowName = workflowName;
            this.stepNo = stepNo;
        }

        public LoadTaskformDTO(string taskNumber, string escalateAfter, string escTimeStamp, string fromEmp, string msgBox,
            string signOff, string subject, string subEmpId, string subEmpName, string created, string updated, string cc,
            string bcc, string escToName, string empCreatedName, string empUpdatedName, string Employee_CC_Id,
            string Employee_BCC_Id, string Escalate_To_Id, string Employee_To_Id)
        {
            this.taskNumber = taskNumber;
            this.escalateAfter = escalateAfter;
            this.escTimeStamp = escTimeStamp;
            this.fromEmp = fromEmp;
            this.msgBox = msgBox;
            this.signOff = signOff;
            this.subject = subject;
            this.subEmpId = subEmpId;
            this.subEmpName = subEmpName;
            this.created = created;
            this.updated = updated;
            this.cc = cc;
            this.bcc = bcc;
            this.escToName = escToName;
            this.empCreatedName = empCreatedName;
            this.empUpdatedName = empUpdatedName;
            this.Employee_CC_Id = Employee_CC_Id;
            this.Employee_BCC_Id = Employee_BCC_Id;
            this.Escalate_To_Id = Escalate_To_Id;
            this.Employee_To_Id = Employee_To_Id;








        }

        public string taskNumber { get; set; }
        public string escalateAfter { get; set; }
        public string escTimeStamp { get; set; }
        public string fromEmp { get; set; }
        public string msgBox { get; set; }
        public string signOff { get; set; }
        public string subject { get; set; }
        public string subEmpId { get; set; }
        public string subEmpName { get; set; }
        public string created { get; set; }
        public string updated { get; set; }
        public string cc { get; set; }
        public string bcc { get; set; }
        public string escToName { get; set; }
        public string empCreatedName { get; set; }
        public string empUpdatedName { get; set; }
        public string language { get; set; }
        public string workflowCode { get; set; }
        public string workflowName { get; set; }
        public int stepNo { get; set; }
        public string Employee_CC_Id { get; set; }
        public string Employee_BCC_Id { get; set; }
        public string Escalate_To_Id { get; set; }
        public string Employee_To_Id { get; set; }
        
    }
}
