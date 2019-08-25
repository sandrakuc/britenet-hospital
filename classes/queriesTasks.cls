public with sharing class queriesTasks {
	
	public static List<Doctor__c> getHiredDoctors(){
		List<HospitalDoctors__c> hospitaldoctors = [select HospitalDoctors__c.doctorId__c from HospitalDoctors__c];
		List<Decimal> ids = new List<Decimal>();
		for(HospitalDoctors__c hosdoc : hospitaldoctors){
			ids.add(hosdoc.doctorId__c);
		}
		List <Doctor__c> doctors = [select Doctor__c.name__c, Doctor__c.surname__c, Doctor__c.id__c from Doctor__c where Doctor__c.id__c in :ids];
		return doctors;
	}
    
    public static List<Doctor__c> getNotHiredDoctors(){
		List<HospitalDoctors__c> hospitaldoctors = [select HospitalDoctors__c.doctorId__c from HospitalDoctors__c];
		List<Decimal> ids = new List<Decimal>();
		for(HospitalDoctors__c hosdoc : hospitaldoctors){
			ids.add(hosdoc.doctorId__c);
		}
		List <Doctor__c> doctors = [select Doctor__c.name__c, Doctor__c.surname__c, Doctor__c.id__c from Doctor__c where Doctor__c.id__c not in :ids];
		return doctors;
	}
	
	public static List<Hospital__c> getHospitalsWithoutDoctors(){
		List<HospitalDoctors__c> hospitaldoctors = [select HospitalDoctors__c.hospitalId__c from HospitalDoctors__c];
		List<Decimal> ids = new List<Decimal>();
		for(HospitalDoctors__c hosdoc : hospitaldoctors){
			ids.add(hosdoc.hospitalId__c);
		}
		List <Hospital__c> hospitals = [select Hospital__c.name__c,Hospital__c.id__c from Hospital__c where Hospital__c.id__c not in :ids];
		return hospitals;
	}
	
	public static AggregateResult[] getCountHospitals(){
		AggregateResult[] aggRes = [select Hospital__c.town__c, count(Hospital__c.id__c) from Hospital__c group by Hospital__c.town__c];
		return aggRes;
	}
	
	public static List<Doctor__c> getADoctors(){
		List <Doctor__c> doctors = [select Doctor__c.name__c, Doctor__c.surname__c, Doctor__c.id__c from Doctor__c where Doctor__c.surname__c like 'A%'];
		return doctors;
	}
	
	public static List<Hospital__c> getHospByCountry(){
		List <Hospital__c> hospitals = [select Hospital__c.name__c,Hospital__c.streetNumber__c, Hospital__c.country__c from Hospital__c where Hospital__c.streetNumber__c > 5 and (Hospital__c.country__c = 'Polska' or Hospital__c.country__c = 'Niemcy') limit 5];
		return hospitals;
	}
	
	public static List<Doctor__c> getSortedDoctors(){
		List <Doctor__c> doctors = [select Doctor__c.name__c, Doctor__c.surname__c, Doctor__c.id__c from Doctor__c order by Doctor__c.surname__c limit 10];
		return doctors;
	}
	
	public static List<Doctor__c> getSortedDoctorsThirdTen(){
		List <Doctor__c> doctors = [select Doctor__c.name__c, Doctor__c.surname__c, Doctor__c.id__c from Doctor__c order by Doctor__c.surname__c limit 10 offset 20];
		return doctors;
	}
	
	public static List<Doctor__c> getMichalAndPawel(){
		List <Doctor__c> doctors = [select Doctor__c.name__c, Doctor__c.surname__c, Doctor__c.id__c from Doctor__c where Doctor__c.name__c = 'Michal' or Doctor__c.name__c = 'Pawel'];
		return doctors;
	}
	
	public static List<Doctor__c> getHiredDoctorsInAHospital(){
		List<Hospital__c> hospitals = [select Hospital__c.id__c from Hospital__c where Hospital__c.name__c like 'A%'];
		List<Decimal> hosId = new List<Decimal>();
		for(Hospital__c hos : hospitals){
			hosId.add(hos.id__c);
		}
		List<HospitalDoctors__c> hospitaldoctors = [select HospitalDoctors__c.doctorId__c from HospitalDoctors__c where HospitalDoctors__c.hospitalId__c in :hosId];
		List<Decimal> ids = new List<Decimal>();
		for(HospitalDoctors__c hosdoc : hospitaldoctors){
			ids.add(hosdoc.doctorId__c);
		}
		List <Doctor__c> doctors = [select Doctor__c.name__c, Doctor__c.surname__c, Doctor__c.id__c from Doctor__c where Doctor__c.id__c in :ids];
		return doctors;
	}
	
	public static List<Doctor__c> getDocByLicNumber(){
		List <Doctor__c> doctors = [select Doctor__c.name__c, Doctor__c.surname__c, Doctor__c.id__c from Doctor__c where Doctor__c.licenseNumber__c > '10000' and Doctor__c.licenseNumber__c < '50000'];
		return doctors;
	}
	
}