using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    public class LoadWFTaskChkListDTO
    {
        public  LoadWFTaskChkListDTO(string language, string workflowCode, string workflowName, int stepNo)

        {
            this.language = language;
            this.workflowCode = workflowCode;
            this.workflowName = workflowName;
            this.stepNo = stepNo;
        }

        public string language { get; set; }
        public string workflowCode { get; set; }
        public string workflowName { get; set; }
        public int stepNo { get; set; }
        
    }
    }

