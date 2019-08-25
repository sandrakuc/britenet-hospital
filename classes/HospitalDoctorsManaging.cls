public with sharing class HospitalDoctorsManaging {
	public static void hireDoctorToHospital(Decimal id, Hospital__c hospital, Doctor__c doctor){
		HospitalDoctors__c employment = new HospitalDoctors__c(Name = 'Employment', id__c = id, hospitalId__c = hospital.id__c, doctorId__c = doctor.id__c, dateStarted__c = system.today(), department__c = doctor.department__c, position__c = doctor.position__c, status__c = doctor.status__c, partTime__c = doctor.partTime__c, homeConsult__c = doctor.homeConsult__c);
		insert employment;
		system.debug(employment);
	}    
}