public with sharing class AddNewHospitalController {
    public Decimal id {get;set;}
	public String name {get;set;}
	public String country {get; set;}
	public String town {get;set;}
	public String street {get;set;}
	public Decimal streetNumber {get;set;}
	public String postalCode {get; set;}
	public String phoneNumber1 {get;set;}
	public String phoneNumber2 {get;set;}
	public String faxNumber1 {get;set;}
	public String faxNumber2 {get;set;}
	public String chiefOfMedicine {get;set;}
	public String salesRep {get;set;}
	public Boolean teachingHospital {get;set;}
    
    public void createNewHospital(){
    	HospitalManaging.addHospital(id, name, country, town, street, streetNumber, postalCode, phoneNumber1, phoneNumber2, faxNumber1, faxNumber2, chiefOfMedicine, salesRep, teachingHospital);
    }
    
    public PageReference goBack(){
    	PageReference Page = new PageReference('/apex/HospitalsList');
	    Page.setRedirect(true);
	    return Page;
    }
}