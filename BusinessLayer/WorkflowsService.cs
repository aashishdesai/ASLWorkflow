using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;
using DataAccessLayer;


namespace BusinessLayer
{
   public class WorkflowsService
    {
       public void SaveWorkflow(WorkflowsDTO workflowsDTO){

           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           workflowsDAO.SaveWorkflow(workflowsDTO);


       }
       public void SaveWorkflowSteps(string workflow_Name, string stepID, int stepNumber)
       {

           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           workflowsDAO.SaveWorkflowSteps(workflow_Name,stepID,stepNumber);


       }
       public void DeleteWorkflowStep(string workflow_Name, string step_ID)
       {

           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           workflowsDAO.DeleteWorkflowStep(workflow_Name, step_ID);


       }
       public void UpdateWorkflow(WorkflowsDTO workflowsDTO)
       {

           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           workflowsDAO.UpdateWorkflow(workflowsDTO);


       }
       public EditWorkflowsDTO EditWorkflow(string Workflow_Name)
       {

           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           return workflowsDAO.EditWorkflow(Workflow_Name);
       }

       public List<ViewWorkflowsDTO> GridEditSelectWorkflow()
       {
           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           return workflowsDAO.GridEditSelectWorkflow();
       }

       public List<ViewWorkflowsDTO> SearchWorkflowName(string Workflow_Name)
       {
           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           return workflowsDAO.SearchWorkflowName(Workflow_Name);
       }

       public List<EmployeeSearchDTO> SearchEmployee(string searchBy, string filterBy) 
       {
           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           return workflowsDAO.SearchEmployee(searchBy,filterBy);

            }

       public void AssignEmployee(string empId, string wfName, string stepId)
       {
           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           workflowsDAO.AssignEmployee(empId,wfName,stepId);
 
       }
       public empPerStepDTO EmpPerStep(string Workflow_Name, string Step_Name)
       {

           EmpPerStepDAO empPerStepDAO = new EmpPerStepDAO();
           return empPerStepDAO.empPerStep(Workflow_Name, Step_Name);
       }
       public List<LoadWorkflowStepsDTO> LoadWorkflowStepsDTO(string Workflow_Name)
       {
           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           return workflowsDAO.WFStepsOnLoad(Workflow_Name);
       }
       public void SaveTaskForm(WorkflowTaskFormsDTO wfTaskFormsDto)
       {

           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           workflowsDAO.SaveWFTaskForm(wfTaskFormsDto);


       }

       public void UpdateTaskForm(WorkflowTaskFormsDTO wfTaskFormsDto)
       {

           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           workflowsDAO.UpdateWFTaskForm(wfTaskFormsDto);


       }


       public LoadTaskformDTO LoadTaskForm(string wfName, string stepId)
       {
           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           return workflowsDAO.loadTaskform(wfName, stepId);

       }

       public List<LoadWorkflowTaskDTO> LoadTask(string step_Screen_Id, string wfName)
       {
           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           return workflowsDAO.loadWFTask(step_Screen_Id, wfName);

       }

       public LoadWFTaskChkListDTO LoadWFTaskCHklist(string wfName, string stepId)
       {
           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           return workflowsDAO.loadWFTaskCheckListform(wfName, stepId);

       }

       public LoadTaskformDTO LoadWFTaskformtoEdit(string wfTaskId)
       {
           WorkflowsDAO workflowsDAO = new WorkflowsDAO();
           return workflowsDAO.loadTaskformToEdit(wfTaskId);

       }
       public WorkflowReportDTO Workflow_Report(string wfName,string subEmp,string rbSelect)
       {
           WorkflowReportDAO wfReportDAO = new WorkflowReportDAO();
           return wfReportDAO.Workflow_Report(wfName, subEmp, rbSelect);

       }


    }
}
