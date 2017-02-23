public with sharing class SupportStatus {

    public string emailValue {get;set;}
    public List<Case> caseListAll {get;Set;}
    public List<Case> caseList {get;Set;}
    public Boolean hideTable {get;set;}


public SupportStatus(ApexPages.StandardController controller) {
    
    emailValue= ApexPages.currentPage().getParameters().get('useremail');
    searchCaseList(emailValue);

    }
    
public void searchCases(){
        searchCaseList(emailValue);   
    }
    
private Boolean searchCaseList(String searchString){
        caseListAll = new List<Case>();
        caseList = new List<Case>();
        caseListAll = [SELECT CaseNumber, SuppliedName, Subject, Status, Reason, Type, SuppliedEmail, SuppliedCompany, Login_Url__c FROM Case WHERE SuppliedEmail =: searchString ORDER BY CaseNumber desc];

        for(Case c: caseListAll){
            if(c.Reason != 'Other' && c.Type != 'Other')
            {
                caseList.add(c);                
            }            
        }
        hideTable = !caseList.isEmpty();
        return hideTable;
    }    

}