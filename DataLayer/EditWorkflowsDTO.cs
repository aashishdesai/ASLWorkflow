using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer
{
    public class EditWorkflowsDTO
    {
        public EditWorkflowsDTO(string Language, string Code, bool Inactive)
        {
            this.Language = Language;
            this.Code = Code;
            this.Inactive = Inactive;
        }

        public string Language { get; set; }

        public string Code { get; set; }
        public bool Inactive { get; set; }
    }
}
