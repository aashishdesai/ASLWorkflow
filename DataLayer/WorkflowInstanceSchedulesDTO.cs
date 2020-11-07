using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    public class WorkflowInstanceSchedulesDTO
    {
        public WorkflowInstanceSchedulesDTO(string Schedule_Type, DateTime Specific_Date, string Occurance_Number, string Month_Code, string Weekday_Code, string Day_Code)
        {
            this.Schedule_Type = Schedule_Type;
            this.Specific_Date = Specific_Date;
            this.Occurance_Number = Occurance_Number;
            this.Month_Code = Month_Code;
            this.Weekday_Code = Weekday_Code;
            this.Day_Code = Day_Code;
        }


        public int Id { get; set; }
        public int Instance { get; set; }
        public string Schedule_Type { get; set; }
        public DateTime Specific_Date { get; set; }
        public string Occurance_Number { get; set; }
        public string Month_Code { get; set; }
        public string Weekday_Code { get; set; }
        public string Day_Code { get; set; }
        public int Dictionary_Field { get; set; }
        public int Days_Offset { get; set; }
        public DateTime Row_Version { get; set; }
        public string Audit_User { get; set; }
        public DateTime Audit_Date { get; set; }
        public string Audit_System { get; set; }
    }
}