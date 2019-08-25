@isTest private class DoctorsHospitalManaginTestSuite {
	
	@isTest static void hireTest(){
		Decimal uni_id = 1;
		Decimal doc_id = 1;
    	String doc_name = 'John';
    	String doc_surname = 'Smith';
    	String doc_title = 'Sample Title';
    	String doc_licenseNumber = '2345678';
    	String doc_position = 'Sample Position';
    	String doc_department = 'Sample Department';
    	Boolean doc_supervisor = false;
    	String doc_workPhone = '0-700-880-771';
    	String doc_privatePhone = '0-666-997-112';
    	String doc_email = 'john@smith.com';
    	String doc_country = 'Polska';
    	String doc_town = 'Kozia wolka';
    	String doc_street = 'Wielka';
    	Decimal doc_streetNumber = 21;
    	Decimal doc_houseNumber = 37;
    	String doc_postalCode = '33-456';
    	Boolean doc_isAvailable = true;
    	Date doc_availableDate = Date.newInstance(2019, 9, 23);
    	String doc_status = 'Sample';
    	Boolean doc_partTime = false;
    	Boolean doc_homeConsult = true;
    	DoctorManaging.addDoctor(doc_id, doc_name, doc_surname, doc_title, doc_licenseNumber, doc_position, doc_department, doc_supervisor, doc_workPhone, doc_privatePhone, doc_email, doc_country, doc_town, doc_street, doc_streetNumber, doc_houseNumber, doc_postalCode, doc_isAvailable, doc_availableDate, doc_status, doc_partTime, doc_homeConsult);
    	List<Doctor__c> doctors = [select id__c, surname__c, name__c, title__c, licenseNumber__c, position__c, department__c, workPhone__c, privatePhone__c, eMail__c, country__c, street__c, streetNumber__c, houseNumber__c, postalCode__c, isAvailable__c, availableDate__c, status__c, partTime__c, homeConsult__c from Doctor__c where id__c = :doc_id limit 1];
    	System.assert(!doctors.isEmpty());
    	Doctor__c doctor = doctors[0];
    	System.assert(doctor != null);
    	Decimal hos_id = 1;
    	String hos_name = 'Szpital im. Slepej Kiszki';
    	String hos_country = 'Polska';
    	String hos_town = 'Myszkikiszki';
    	String hos_street = 'Serduszkowa';
    	String hos_postalCode = '23-444';
    	Decimal hos_streetNumber = 666;
    	String hos_phoneNumber1 = '0-888-999-889';
    	String hos_phoneNumber2 = '0-888-777-887';
    	String hos_faxNumber1 = '0-888-666-886';
    	String hos_faxNumber2 = '0-888-555-885';
    	String hos_chiefOfMedicine = 'Ann Kovalsky';
    	String hos_salesRep = 'http://www.example.com';
    	Boolean hos_teachingHospital = true;
    	HospitalManaging.addHospital(hos_id, hos_name, hos_country, hos_town, hos_street, hos_streetNumber, hos_postalCode, hos_phoneNumber1, hos_phoneNumber2, hos_faxNumber1, hos_faxNumber2, hos_chiefOfMedicine, hos_salesRep, hos_teachingHospital);
    	List<Hospital__c> hospitals = [select id__c, name__c, country__c, town__c, street__c, streetNumber__c, postalCode__c, phoneNumber1__c, phoneNumber2__c, faxNumber1__c, faxNumber2__c, chiefOfMedicine__c, salesRep__c, teachingHospital__c from Hospital__c where id__c = :hos_id limit 1];
    	System.assert(!hospitals.isEmpty());
    	Hospital__c hospital = hospitals[0];
    	System.assert(hospital != null);
    	HospitalDoctorsManaging.hireDoctorToHospital(uni_id, hospital, doctor);
    	List<HospitalDoctors__c> employments = [select id__c, hospitalId__c, doctorId__c, dateStarted__c, position__c, supervisor__c, status__c, partTime__c, homeConsult__c from HospitalDoctors__c where id__c = :uni_id];
    	System.assert(!employments.isEmpty());
    	HospitalDoctors__c employment = employments[0];
    	System.assert(employment != null);
    	System.assertEquals(employment.id__c, uni_id);
    	System.assertEquals(employment.hospitalId__c, hos_id);
    	System.assertEquals(employment.doctorId__c, doc_id);
    	System.assertEquals(employment.dateStarted__c, system.today());
    	System.assertEquals(employment.position__c, doc_position);
    	System.assertEquals(employment.status__c, doc_status);
    	System.assertEquals(employment.partTime__c, doc_partTime);
    	System.assertEquals(employment.homeConsult__c, doc_homeConsult);
    	
	}
    
}