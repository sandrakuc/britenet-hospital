@isTest private class QueriesTasksTestSuite {
    
    @isTest static void getHiredDocs(){
    	CreatingTestingData.createTestData();
    	List<Doctor__c> doctors = queriesTasks.getHiredDoctors();
    	System.assert(!doctors.isEmpty());
    	System.assert(doctors.size() == 10);
    }
    
    @isTest static void getNotHiredDocs(){
    	CreatingTestingData.createTestData();
    	List<Doctor__c> doctors = queriesTasks.getNotHiredDoctors();
    	System.assert(!doctors.isEmpty());
    	System.assert(doctors.size() == 20);
    }
    
    @isTest static void getHospWithoutDocs(){
    	CreatingTestingData.createTestData();
    	List<Hospital__c> hospitals = queriesTasks.getHospitalsWithoutDoctors();
    	System.assert(!hospitals.isEmpty());
    	System.assert(hospitals.size() == 10);
    }
    
    @isTest static void getCountHostInTown(){
    	CreatingTestingData.createTestData();
    	AggregateResult[] aggRes = queriesTasks.getCountHospitals();
    	System.assert(!aggRes.isEmpty());
    	System.assert(aggRes.size() == 5);
    }
    
    @isTest static void getADocs(){
    	CreatingTestingData.createTestData();
    	List<Doctor__c> doctors = queriesTasks.getADoctors();
    	System.assert(!doctors.isEmpty());
    	System.assert(doctors.size() == 7);
    	for(Doctor__c doc : doctors){
    		System.assertEquals(doc.surname__c.substring(0,1), 'A');
    	}
    }
    
    @isTest static void getHospByCountry(){
    	CreatingTestingData.createTestData();
    	List<Hospital__c> hospitals = queriesTasks.getHospByCountry();
    	System.assert(!hospitals.isEmpty());
    	System.assert(hospitals.size() == 5);
    	for(Hospital__c hosp : hospitals){
    		System.assert(hosp.country__c.equals('Polska') || hosp.country__c.equals('Niemcy'));
    		System.assert(hosp.streetNumber__c > 5);
    	}
    }
    
    @isTest static void getSortedDocs(){
    	CreatingTestingData.createTestData();
    	List<Doctor__c> doctors = queriesTasks.getSortedDoctors();
    	System.assert(!doctors.isEmpty());
    	System.assert(doctors.size() == 10);
    }
    
    @isTest static void getSortedDocsThirdTen(){
    	CreatingTestingData.createTestData();
    	List<Doctor__c> doctors = queriesTasks.getSortedDoctorsThirdTen();
    	System.assert(!doctors.isEmpty());
    	System.assert(doctors.size() == 10);
    	System.assert(doctors[9].surname__c.equals('Wokulski'));
    }
    
    @isTest static void getMichalAndPawel(){
    	CreatingTestingData.createTestData();
    	List<Doctor__c> doctors = queriesTasks.getMichalAndPawel();
    	System.assert(!doctors.isEmpty());
    	for(Doctor__c doc : doctors){
    		System.assert(doc.name__c.equals('Pawel') || doc.name__c.equals('Michal'));
    	}
    }
    
    @isTest static void getHiredDocsInAHospital(){
    	CreatingTestingData.createTestData();
    	List<Doctor__c> doctors = queriesTasks.getHiredDoctorsInAHospital();
    	System.assert(!doctors.isEmpty());
    	System.assert(doctors.size() == 3);
    }
    
    @isTest static void getDocByLicNumber(){
    	CreatingTestingData.createTestData();
    	List<Doctor__c> doctors = queriesTasks.getDocByLicNumber();
    	System.assert(!doctors.isEmpty());
    	System.assert(doctors.size() == 12);
    }
}