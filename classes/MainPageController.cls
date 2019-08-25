public with sharing class MainPageController {
    
    public PageReference goToDoctorsList(){
    	PageReference Page = new PageReference('/apex/DoctorsList');
	    Page.setRedirect(true);
	    return Page;
    }
    
    public PageReference goToHospitalsList(){
    	PageReference Page = new PageReference('/apex/HospitalsList');
	    Page.setRedirect(true);
	    return Page;
    }
}