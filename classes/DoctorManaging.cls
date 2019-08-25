public with sharing class DoctorManaging {
	
    public static void addDoctor(Decimal id, String name, String surname, String title, String licenseNumber, String position, String department, Boolean supervisor, String workPhone, String privatePhone, String email, String country, String town, String street, Decimal streetNumber, Decimal houseNumber, String postalCode, Boolean isAvailable, Date availableDate, String status, Boolean partTime, Boolean homeConsulting){
    	Doctor__c doctor = new Doctor__c(Name='Doctor', id__c=id, surname__c = surname, name__c = name, title__c = title, licenseNumber__c = licenseNumber, position__c = position, department__c = department, supervisor__c = supervisor, workPhone__c=workPhone, privatePhone__c = privatePhone, eMail__c = email, country__c = country, town__c = town, street__c = street, streetNumber__c = streetNumber, houseNumber__c = houseNumber, postalCode__c = postalCode, isAvailable__c = isAvailable, availableDate__c = availableDate, status__c = status, partTime__c = partTime, homeConsult__c = homeConsulting);
    	insert doctor;
    	system.debug(doctor);
    }
    
    public static void deleteDoctor(Decimal id){
    	List<Doctor__c> doctors = [select id__c, surname__c, name__c, title__c, licenseNumber__c, position__c, department__c, workPhone__c, privatePhone__c, eMail__c, country__c, street__c, streetNumber__c, houseNumber__c, postalCode__c, isAvailable__c, availableDate__c, status__c, partTime__c, homeConsult__c from Doctor__c where id__c = :id limit 1];
    	if(!doctors.isEmpty()){
    		Doctor__c doctor = doctors[0];
    		delete doctor;
    	}
    }
    
    public static void updateDoctor(Decimal id, String name, String surname, String title, String licenseNumber, String position, String department, Boolean supervisor, String workPhone, String privatePhone, String email, String country, String town, String street, Decimal streetNumber, Decimal houseNumber, String postalCode, Boolean isAvailable, Date availableDate, String status, Boolean partTime, Boolean homeConsulting){
    	List<Doctor__c> doctors = [select id__c, surname__c, name__c, title__c, licenseNumber__c, position__c, department__c, supervisor__c, workPhone__c, privatePhone__c, eMail__c, country__c, street__c, streetNumber__c, houseNumber__c, postalCode__c, isAvailable__c, availableDate__c, status__c, partTime__c, homeConsult__c from Doctor__c where id__c = :id limit 1];
    	if(!doctors.isEmpty()){
    		Doctor__c doctor = doctors[0];
    		doctor.name__c = name;
    		doctor.surname__c = surname;
    		doctor.title__c = title;
    		doctor.licenseNumber__c = licenseNumber;
    		doctor.position__c = position;
    		doctor.department__c = department;
    		doctor.workPhone__c = workPhone;
    		doctor.privatePhone__c = privatePhone;
    		doctor.eMail__c = email;
    		doctor.country__c = country;
    		doctor.street__c = street;
    		doctor.streetNumber__c = streetNumber;
    		doctor.houseNumber__c = houseNumber;
    		doctor.postalCode__c = postalCode;
    		doctor.isAvailable__c = isAvailable;
    		doctor.availableDate__c = availableDate;
    		doctor.status__c = status;
    		doctor.partTime__c = partTime;
    		doctor.homeConsult__c = homeConsulting;
    		update doctor;
    		system.debug(doctor);
    	}
    }
}