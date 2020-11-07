using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    public class WorkflowInstanceScheduleEmployeesDTO
    {
        public WorkflowInstanceScheduleEmployeesDTO(int Schedule, int Employee)
        {
            this.Schedule = Schedule;
            this.Employee = Employee;
        }



        public int Id { get; set; }
        public int Schedule { get; set; }
        public int Employee { get; set; }
        public DateTime Row_Version { get; set; }
        public string Audit_User { get; set; }
        public DateTime Audit_Date { get; set; }
        public string Audit_System { get; set; }
    }
}
