public with sharing class DoctorDetailsController {
    public Doctor__c doctor {get; set;}
	public String docId {get;set; }
	
	public DoctorDetailsController(){
		docId = ApexPages.CurrentPage().getparameters().get('id');
		Decimal id = Decimal.valueOf(docId);
		doctor = [select Doctor__c.id__c, Doctor__c.name__c, Doctor__c.surname__c, Doctor__c.title__c, Doctor__c.licenseNumber__c, Doctor__c.position__c, Doctor__c.department__c, Doctor__c.supervisor__c, Doctor__c.workPhone__c, Doctor__c.privatePhone__c, Doctor__c.email__c, Doctor__c.country__c, Doctor__c.town__c, Doctor__c.street__c, Doctor__c.streetNumber__c, Doctor__c.houseNumber__c, Doctor__c.postalCode__c, Doctor__c.isAvailable__c, Doctor__c.availableDate__c, Doctor__c.status__c, Doctor__c.partTime__c, Doctor__c.homeConsult__c from Doctor__c where Doctor__c.id__c = :id];
	}
	
	public PageReference goBack(){
    	PageReference Page = new PageReference('/apex/DoctorsList');
	    Page.setRedirect(true);
	    return Page;
    }
    
    public void updateDoctor(){
    	DoctorManaging.updateDoctor(doctor.id__c, doctor.name__c, doctor.surname__c, doctor.title__c, doctor.licenseNumber__c, doctor.position__c, doctor.department__c, doctor.supervisor__c, doctor.workPhone__c, doctor.privatePhone__c, doctor.email__c, doctor.country__c, doctor.town__c, doctor.street__c, doctor.streetNumber__c, doctor.houseNumber__c, doctor.postalCode__c, doctor.isAvailable__c, doctor.availableDate__c, doctor.status__c, doctor.partTime__c, doctor.homeConsult__c);
    }
}