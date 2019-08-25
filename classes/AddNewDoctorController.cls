public with sharing class AddNewDoctorController {
	
	public Decimal id {get;set;}
	public String name {get;set;}
	public String surname {get; set;}
	public String title {get;set;}
	public String licenseNumber {get;set;}
	public String position {get;set;}
	public String department {get; set;}
	public Boolean supervisor {get; set;}
	public String workPhone {get;set;}
	public String privatePhone {get;set;}
	public String email {get;set;}
	public String country {get; set;}
	public String town {get;set;}
	public String street {get;set;}
	public Decimal streetNumber {get;set;}
	public Decimal houseNumber {get; set;}
	public String postalCode {get; set;}
	public Boolean isAvailable {get;set;}
	public Date availableDate {get;set;}
	public String status {get; set;}
	public Boolean partTime {get; set;}
	public Boolean homeConsult {get;set;}
    
    public void createNewDoctor(){
    	DoctorManaging.addDoctor(id, name, surname, title, licenseNumber, position, department, supervisor, workPhone, privatePhone, email, country, town, street, streetNumber, houseNumber, postalCode, isAvailable, availableDate, status, partTime, homeConsult);
    }
    
    public PageReference goBack(){
    	PageReference Page = new PageReference('/apex/DoctorsList');
	    Page.setRedirect(true);
	    return Page;
    }
}