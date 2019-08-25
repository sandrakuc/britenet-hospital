@isTest private class HospitalManaginMethodTestSuite {
    @isTest static void addHospitalTest(){
    	Decimal id = 1;
    	String name = 'Szpital im. Slepej Kiszki';
    	String country = 'Polska';
    	String town = 'Myszkikiszki';
    	String street = 'Serduszkowa';
    	String postalCode = '23-444';
    	Decimal streetNumber = 666;
    	String phoneNumber1 = '0-888-999-889';
    	String phoneNumber2 = '0-888-777-887';
    	String faxNumber1 = '0-888-666-886';
    	String faxNumber2 = '0-888-555-885';
    	String chiefOfMedicine = 'Ann Kovalsky';
    	String salesRep = 'http://www.example.com';
    	Boolean teachingHospital = true;
    	HospitalManaging.addHospital(id, name, country, town, street, streetNumber, postalCode, phoneNumber1, phoneNumber2, faxNumber1, faxNumber2, chiefOfMedicine, salesRep, teachingHospital);
    	List<Hospital__c> hospitals = [select id__c, name__c, country__c, town__c, street__c, streetNumber__c, postalCode__c, phoneNumber1__c, phoneNumber2__c, faxNumber1__c, faxNumber2__c, chiefOfMedicine__c, salesRep__c, teachingHospital__c from Hospital__c where id__c = :id limit 1];
    	System.assert(!hospitals.isEmpty());
    	Hospital__c hospital = hospitals[0];
    	System.assert(hospital != null);
    	System.assertEquals(hospital.id__c, id);
    	System.assertEquals(hospital.name__c, name);
    	System.assertEquals(hospital.country__c, country);
    	System.assertEquals(hospital.town__c, town);
    	System.assertEquals(hospital.street__c, street);
    	System.assertEquals(hospital.streetNumber__c, streetNumber);
    	System.assertEquals(hospital.postalCode__c, postalCode);
    	System.assertEquals(hospital.phoneNumber1__c, phoneNumber1);
    	System.assertEquals(hospital.phoneNumber2__c, phoneNumber2);
    	System.assertEquals(hospital.faxNumber1__c, faxNumber1);
    	System.assertEquals(hospital.faxNumber2__c, faxNumber2);
    	System.assertEquals(hospital.chiefOfMedicine__c, chiefOfMedicine);
    	System.assertEquals(hospital.salesRep__c, salesRep);
    	System.assertEquals(hospital.teachingHospital__c, teachingHospital);
    }
    
    @isTest static void deleteHospital(){
    	Decimal id = 1;
    	String name = 'Szpital im. Slepej Kiszki';
    	String country = 'Polska';
    	String town = 'Myszkikiszki';
    	String street = 'Serduszkowa';
    	String postalCode = '23-444';
    	Decimal streetNumber = 666;
    	String phoneNumber1 = '0-888-999-889';
    	String phoneNumber2 = '0-888-777-887';
    	String faxNumber1 = '0-888-666-886';
    	String faxNumber2 = '0-888-555-885';
    	String chiefOfMedicine = 'Ann Kovalsky';
    	String salesRep = 'http://www.example.com';
    	Boolean teachingHospital = true;
    	HospitalManaging.addHospital(id, name, country, town, street, streetNumber, postalCode, phoneNumber1, phoneNumber2, faxNumber1, faxNumber2, chiefOfMedicine, salesRep, teachingHospital);
    	HospitalManaging.deleteHospital(id);
    	List<Hospital__c> hospitals = [select id__c, name__c, country__c, town__c, street__c, streetNumber__c, postalCode__c, phoneNumber1__c, phoneNumber2__c, faxNumber1__c, faxNumber2__c, chiefOfMedicine__c, salesRep__c, teachingHospital__c from Hospital__c where id__c = :id limit 1];
    	System.assert(hospitals.isEmpty());
    }
    
    @isTest static void updateHospital(){
    	Decimal id = 1;
    	String name = 'Szpital im. Slepej Kiszki';
    	String country = 'Polska';
    	String town = 'Myszkikiszki';
    	String street = 'Serduszkowa';
    	String postalCode = '23-444';
    	Decimal streetNumber = 666;
    	String phoneNumber1 = '0-888-999-889';
    	String phoneNumber2 = '0-888-777-887';
    	String faxNumber1 = '0-888-666-886';
    	String faxNumber2 = '0-888-555-885';
    	String chiefOfMedicine = 'Ann Kovalsky';
    	String salesRep = 'http://www.example.com';
    	Boolean teachingHospital = true;
    	HospitalManaging.addHospital(id, name, country, town, street, streetNumber, postalCode, phoneNumber1, phoneNumber2, faxNumber1, faxNumber2, chiefOfMedicine, salesRep, teachingHospital);
    	Decimal id2 = 1;
    	String name2 = 'Szpital im. Slepej Kiszki2';
    	String country2 = 'Polska';
    	String town2 = 'Myszkikiszki3';
    	String street2 = 'Serduszkowa3';
    	String postalCode2 = '23-444';
    	Decimal streetNumber2 = 666;
    	String phoneNumber12 = '0-888-939-889';
    	String phoneNumber22 = '0-888-737-887';
    	String faxNumber12 = '0-888-636-886';
    	String faxNumber22 = '0-888-535-885';
    	String chiefOfMedicine2 = 'Ann Kovalsky3';
    	String salesRep2 = 'http://www.example3.com';
    	Boolean teachingHospital2 = true;
    	HospitalManaging.updateHospital(id2, name2, country2, town2, street2, streetNumber2, postalCode2, phoneNumber12, phoneNumber22, faxNumber12, faxNumber22, chiefOfMedicine2, salesRep2, teachingHospital2);
    	List<Hospital__c> hospitals = [select id__c, name__c, country__c, town__c, street__c, streetNumber__c, postalCode__c, phoneNumber1__c, phoneNumber2__c, faxNumber1__c, faxNumber2__c, chiefOfMedicine__c, salesRep__c, teachingHospital__c from Hospital__c where id__c = :id2 limit 1];
    	System.assert(!hospitals.isEmpty());
    	Hospital__c hospital = hospitals[0];
    	System.assert(hospital != null);
    	System.assertEquals(hospital.id__c, id2);
    	System.assertEquals(hospital.name__c, name2);
    	System.assertEquals(hospital.country__c, country2);
    	System.assertEquals(hospital.town__c, town2);
    	System.assertEquals(hospital.street__c, street2);
    	System.assertEquals(hospital.streetNumber__c, streetNumber2);
    	System.assertEquals(hospital.postalCode__c, postalCode2);
    	System.assertEquals(hospital.phoneNumber1__c, phoneNumber12);
    	System.assertEquals(hospital.phoneNumber2__c, phoneNumber22);
    	System.assertEquals(hospital.faxNumber1__c, faxNumber12);
    	System.assertEquals(hospital.faxNumber2__c, faxNumber22);
    	System.assertEquals(hospital.chiefOfMedicine__c, chiefOfMedicine2);
    	System.assertEquals(hospital.salesRep__c, salesRep2);
    	System.assertEquals(hospital.teachingHospital__c, teachingHospital2);
    }
}