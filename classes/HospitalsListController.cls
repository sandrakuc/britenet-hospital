public with sharing class HospitalsListController {
    public List<Hospital__c> hospitals {get; set;}
    
    public HospitalsListController() {
    	hospitals = [SELECT Hospital__c.id__c, Hospital__c.name__c FROM Hospital__c];
    }
    
    public PageReference goToAddNewHospital(){
    	PageReference Page = new PageReference('/apex/AddNewHospital');
	    Page.setRedirect(true);
	    return Page;
    }
    
    public PageReference goToMainPage(){
    	PageReference Page = new PageReference('/apex/MainPage');
	    Page.setRedirect(true);
	    return Page;
    }
}