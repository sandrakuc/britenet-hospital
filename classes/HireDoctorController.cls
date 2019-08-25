public with sharing class HireDoctorController {
	public Doctor__c doctor {get; set;}
	public String docId {get; set;}
	public Decimal id {get;set;}
	public String hospitalName {get;set;}
	public Decimal hosdocId {get;set;}
	
	public HireDoctorController(){
		docId = ApexPages.CurrentPage().getparameters().get('id');
		Decimal id = Decimal.valueOf(docId);
		doctor = [select Doctor__c.id__c, Doctor__c.name__c, Doctor__c.surname__c, Doctor__c.title__c, Doctor__c.licenseNumber__c, Doctor__c.position__c, Doctor__c.department__c, Doctor__c.supervisor__c, Doctor__c.workPhone__c, Doctor__c.privatePhone__c, Doctor__c.email__c, Doctor__c.country__c, Doctor__c.town__c, Doctor__c.street__c, Doctor__c.streetNumber__c, Doctor__c.houseNumber__c, Doctor__c.postalCode__c, Doctor__c.isAvailable__c, Doctor__c.availableDate__c, Doctor__c.status__c, Doctor__c.partTime__c, Doctor__c.homeConsult__c from Doctor__c where Doctor__c.id__c = :id];
	}
	
	public PageReference goBack(){
    	PageReference Page = new PageReference('/apex/DoctorsList');
	    Page.setRedirect(true);
	    return Page;
    }    
    
    public void hire(){
    	Hospital__c hospital = [SELECT Hospital__c.id__c, Hospital__c.name__c, Hospital__c.country__c, Hospital__c.town__c, Hospital__c.street__c, Hospital__c.streetNumber__c, Hospital__c.postalCode__c, Hospital__c.phoneNumber1__c, Hospital__c.phoneNumber2__c, Hospital__c.faxNumber1__c, Hospital__c.faxNumber2__c, Hospital__c.chiefOfMedicine__c, Hospital__c.salesRep__c, Hospital__c.teachingHospital__c FROM Hospital__c WHERE Hospital__c.name__c = :hospitalName];
    	HospitalDoctorsManaging.hireDoctorToHospital(hosdocId, hospital, doctor);
    }
    
}