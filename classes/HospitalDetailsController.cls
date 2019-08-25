public with sharing class HospitalDetailsController {
    public Hospital__c hospital {get; set;}
	public String hosId {get;set; }
	
	public HospitalDetailsController(){
		hosId = ApexPages.CurrentPage().getparameters().get('id');
		Decimal id = Decimal.valueOf(hosId);
		hospital = [select Hospital__c.id__c, Hospital__c.name__c, Hospital__c.country__c, Hospital__c.town__c, Hospital__c.street__c, Hospital__c.streetNumber__c, Hospital__c.postalCode__c, Hospital__c.phoneNumber1__c, Hospital__c.phoneNumber2__c, Hospital__c.faxNumber1__c, Hospital__c.faxNumber2__c, Hospital__c.chiefOfMedicine__c, Hospital__c.salesRep__c, Hospital__c.teachingHospital__c from Hospital__c where Hospital__c.id__c = :id];
	}
	
	public PageReference goBack(){
    	PageReference Page = new PageReference('/apex/HospitalsList');
	    Page.setRedirect(true);
	    return Page;
    }
    
    public void updateHospital(){
    	HospitalManaging.updateHospital(hospital.id__c, hospital.name__c, hospital.country__c, hospital.town__c, hospital.street__c, hospital.streetNumber__c, hospital.postalCode__c, hospital.phoneNumber1__c, hospital.phoneNumber2__c, hospital.faxNumber1__c, hospital.faxNumber2__c, hospital.chiefOfMedicine__c, hospital.salesRep__c, hospital.teachingHospital__c);
    }
}