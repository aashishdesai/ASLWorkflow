using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    public class empPerStepDTO
    {
        public empPerStepDTO(string employeeName)
        {
            this.employeeName = employeeName;
            
        }

        public string employeeName { get; set; }

        
    }
}
