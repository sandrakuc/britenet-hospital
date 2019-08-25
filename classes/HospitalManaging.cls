public with sharing class HospitalManaging {
	
	public static void addHospital(Decimal id, String name, String country, String town, String street, Decimal streetNumber, String postalCode, String phoneNumber1, String phoneNumber2, String faxNumber1, String faxNumber2, String chiefOfMedicine, String salesRep, Boolean teachingHospital){
		Hospital__c hospital = new Hospital__c(Name='Hospital', id__c = id, name__c = name, country__c = country, town__c = town, street__c = street, streetNumber__c = streetNumber, postalCode__c = postalCode, phoneNumber1__c = phoneNumber1, phoneNumber2__c = phoneNumber2, faxNumber1__c = faxNumber1, faxNumber2__c = faxNumber2, chiefOfMedicine__c = chiefOfMedicine, salesRep__c = salesRep, teachingHospital__c = teachingHospital);
		insert hospital;
		system.debug(hospital);
	}
	
	public static void deleteHospital(Decimal id){
		List<Hospital__c> hospitals = [select id__c, name__c, country__c, town__c, street__c, streetNumber__c, postalCode__c, phoneNumber1__c, phoneNumber2__c, faxNumber1__c, faxNumber2__c, chiefOfMedicine__c, salesRep__c, teachingHospital__c from Hospital__c where id__c = :id limit 1];
		if(!hospitals.isEmpty()){
			Hospital__c hospital = hospitals[0];
			delete hospital;
		}
	}
	
	public static void updateHospital(Decimal id, String name, String country, String town, String street, Decimal streetNumber, String postalCode, String phoneNumber1, String phoneNumber2, String faxNumber1, String faxNumber2, String chiefOfMedicine, String salesRep, Boolean teachingHospital){
		List<Hospital__c> hospitals = [select id__c, name__c, country__c, town__c, street__c, streetNumber__c, postalCode__c, phoneNumber1__c, phoneNumber2__c, faxNumber1__c, faxNumber2__c, chiefOfMedicine__c, salesRep__c, teachingHospital__c from Hospital__c where id__c = :id limit 1];
		if(!hospitals.isEmpty()){
			Hospital__c hospital = hospitals[0];
			hospital.name__c = name;
			hospital.country__c = country;
			hospital.town__c = town;
			hospital.street__c = street;
			hospital.streetNumber__c = streetNumber;
			hospital.postalCode__c = postalCode;
			hospital.phoneNumber1__c = phoneNumber1;
			hospital.phoneNumber2__c = phoneNumber2;
			hospital.faxNumber1__c = faxNumber1;
			hospital.faxNumber2__c = faxNumber2;
			hospital.chiefOfMedicine__c = chiefOfMedicine;
			hospital.salesRep__c = salesRep;
			hospital.teachingHospital__c = teachingHospital;
			update hospital;
		}
	}
    
}