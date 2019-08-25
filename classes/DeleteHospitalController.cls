public with sharing class DeleteHospitalController {
    public String hosId {get;set;}
	Decimal id {get;set;}
	
	public DeleteHospitalController(){
		hosId = ApexPages.CurrentPage().getparameters().get('id');
		id = Decimal.valueOf(hosId);
	}
	
	public PageReference deleteHospital(){
		HospitalManaging.deleteHospital(id);
		PageReference Page = new PageReference('/apex/HospitalsList');
	    Page.setRedirect(true);
	    return Page;
	}
	
	public PageReference goBack(){
    	PageReference Page = new PageReference('/apex/HospitalsList');
	    Page.setRedirect(true);
	    return Page;
    }
}