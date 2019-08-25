public with sharing class DoctorsListController {
    public List<Doctor__c> doctors {get; set;}
    
    public DoctorsListController() {
    	doctors = [SELECT Doctor__c.id__c, Doctor__c.name__c, Doctor__c.surname__c FROM Doctor__c];
    }
    
    public PageReference goToAddNewDoctor(){
    	PageReference Page = new PageReference('/apex/AddNewDoctor');
	    Page.setRedirect(true);
	    return Page;
    }
    
    public PageReference goToMainPage(){
    	PageReference Page = new PageReference('/apex/MainPage');
	    Page.setRedirect(true);
	    return Page;
    }
    
}