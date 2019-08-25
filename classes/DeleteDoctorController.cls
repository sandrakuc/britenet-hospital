public with sharing class DeleteDoctorController {
	
	public String docId {get;set;}
	Decimal id {get;set;}
	
	public DeleteDoctorController(){
		docId = ApexPages.CurrentPage().getparameters().get('id');
		id = Decimal.valueOf(docId);
	}
	
	public PageReference deleteDoctor(){
		DoctorManaging.deleteDoctor(id);
		PageReference Page = new PageReference('/apex/DoctorsList');
	    Page.setRedirect(true);
	    return Page;
	}
	
	public PageReference goBack(){
    	PageReference Page = new PageReference('/apex/DoctorsList');
	    Page.setRedirect(true);
	    return Page;
    }
    
}