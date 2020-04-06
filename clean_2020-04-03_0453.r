#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('EADRDatabase_DATA_2020-04-03_0453.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$subject_id)="Subject ID"
label(data$please_rate_your_current_s)="Please rate your current sense of smell or flavor appreciation as "
label(data$is_your_nose_currently_blo)="Is your nose currently blocked such that it reduces your sense of smell?"
label(data$age)="Age"
label(data$race)="Race"
label(data$sex)="Sex"
label(data$screening___1)="Screening (choice=Cough)"
label(data$screening___2)="Screening (choice=Fever)"
label(data$screening___3)="Screening (choice=Chills)"
label(data$screening___7)="Screening (choice=SOB)"
label(data$screening___4)="Screening (choice=Travel)"
label(data$screening___5)="Screening (choice=Pharyngitis)"
label(data$screening___6)="Screening (choice=Anosmia/hyposmia)"
label(data$illicit_drug_use)="Illicit drug use"
label(data$tobacco_use)="Tobacco use?"
label(data$smokeless_tabacco)="Smokeless tabacco? "
label(data$imaging_ordered)="Imaging ordered?"
label(data$images_ordered___1)="Images ordered (choice=CXR)"
label(data$images_ordered___2)="Images ordered (choice=LUS)"
label(data$images_ordered___3)="Images ordered (choice=POCUS LUS)"
label(data$images_ordered___4)="Images ordered (choice=CT)"
label(data$images_ordered___5)="Images ordered (choice=MRI)"
label(data$blood_tests_ordered)="Blood tests ordered?"
label(data$blood_test_ordered___1)="Blood test ordered (choice=CBC)"
label(data$blood_test_ordered___2)="Blood test ordered (choice=Trop)"
label(data$blood_test_ordered___3)="Blood test ordered (choice=CMP)"
label(data$blood_test_ordered___26)="Blood test ordered (choice=BMP)"
label(data$blood_test_ordered___25)="Blood test ordered (choice=LDH)"
label(data$blood_test_ordered___21)="Blood test ordered (choice=Calcium)"
label(data$blood_test_ordered___22)="Blood test ordered (choice=LFT)"
label(data$blood_test_ordered___4)="Blood test ordered (choice=BNP)"
label(data$blood_test_ordered___6)="Blood test ordered (choice=Lipase)"
label(data$blood_test_ordered___7)="Blood test ordered (choice=Trop)"
label(data$blood_test_ordered___8)="Blood test ordered (choice=PT)"
label(data$blood_test_ordered___9)="Blood test ordered (choice=PTT)"
label(data$blood_test_ordered___10)="Blood test ordered (choice=INR)"
label(data$blood_test_ordered___11)="Blood test ordered (choice=lactic)"
label(data$blood_test_ordered___12)="Blood test ordered (choice=mag)"
label(data$blood_test_ordered___14)="Blood test ordered (choice=BUN)"
label(data$blood_test_ordered___15)="Blood test ordered (choice=Creatinine)"
label(data$blood_test_ordered___16)="Blood test ordered (choice=Glucose)"
label(data$blood_test_ordered___17)="Blood test ordered (choice=Hepatic)"
label(data$blood_test_ordered___18)="Blood test ordered (choice=CRP)"
label(data$blood_test_ordered___19)="Blood test ordered (choice=D-Dimer)"
label(data$blood_test_ordered___20)="Blood test ordered (choice=Lytes)"
label(data$blood_test_ordered___23)="Blood test ordered (choice=Blood Gas)"
label(data$blood_test_ordered___24)="Blood test ordered (choice=Blood cultures)"
label(data$blood_test_ordered___13)="Blood test ordered (choice=other)"
label(data$medical_history___1)="Medical history (choice=CHF)"
label(data$medical_history___2)="Medical history (choice=COPD)"
label(data$medical_history___3)="Medical history (choice=Diabetes)"
label(data$medical_history___4)="Medical history (choice=Asthma)"
label(data$medical_history___6)="Medical history (choice=HTN)"
label(data$medical_history___7)="Medical history (choice=Depression)"
label(data$medical_history___8)="Medical history (choice=None)"
label(data$medical_history___5)="Medical history (choice=Other)"
label(data$disposition)="Disposition"
label(data$away_adjuncts___1)="Away adjuncts (choice=NC)"
label(data$away_adjuncts___2)="Away adjuncts (choice=NRB)"
label(data$away_adjuncts___3)="Away adjuncts (choice=Venti)"
label(data$away_adjuncts___4)="Away adjuncts (choice=HFNC)"
label(data$away_adjuncts___5)="Away adjuncts (choice=CPAP)"
label(data$away_adjuncts___6)="Away adjuncts (choice=BIPAP)"
label(data$away_adjuncts___7)="Away adjuncts (choice=Intubation)"
label(data$away_adjuncts___8)="Away adjuncts (choice=Other)"
label(data$t_30)="T+30"
label(data$day_mortality)="30 Day mortality"
label(data$ehr_data_complete)="Complete?"
label(data$date_test_can_be_collected)="Date test can be collected"
label(data$this_odor_smells_most_like)="This odor smells most like:"
label(data$this_odor_smells_most_2)="This odor smells most like:"
label(data$this_odor_smells_most_3)="This odor smells most like:"
label(data$this_odor_smells_most_4)="This odor smells most like:"
label(data$this_odor_smells_most_5)="This odor smells most like:"
label(data$this_odor_smells_most_6)="This odor smells most like:"
label(data$this_odor_smells_most_7)="This odor smells most like:"
label(data$this_odor_smells_most_8)="This odor smells most like:"
label(data$this_odor_smells_most_9)="This odor smells most like:"
label(data$this_odor_smells_most_10)="This odor smells most like:"
label(data$this_odor_smells_most_11)="This odor smells most like:"
label(data$this_odor_smells_most_12)="This odor smells most like:"
label(data$bsit_data_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$please_rate_your_current_s.factor = factor(data$please_rate_your_current_s,levels=c("1","2","3","4"))
data$is_your_nose_currently_blo.factor = factor(data$is_your_nose_currently_blo,levels=c("1","2","3"))
data$age.factor = factor(data$age,levels=c("18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90"))
data$race.factor = factor(data$race,levels=c("1","2","3"))
data$sex.factor = factor(data$sex,levels=c("1","2","3"))
data$screening___1.factor = factor(data$screening___1,levels=c("0","1"))
data$screening___2.factor = factor(data$screening___2,levels=c("0","1"))
data$screening___3.factor = factor(data$screening___3,levels=c("0","1"))
data$screening___7.factor = factor(data$screening___7,levels=c("0","1"))
data$screening___4.factor = factor(data$screening___4,levels=c("0","1"))
data$screening___5.factor = factor(data$screening___5,levels=c("0","1"))
data$screening___6.factor = factor(data$screening___6,levels=c("0","1"))
data$illicit_drug_use.factor = factor(data$illicit_drug_use,levels=c("1","2","3"))
data$tobacco_use.factor = factor(data$tobacco_use,levels=c("1","2","3","4"))
data$smokeless_tabacco.factor = factor(data$smokeless_tabacco,levels=c("1","0"))
data$imaging_ordered.factor = factor(data$imaging_ordered,levels=c("1","0"))
data$images_ordered___1.factor = factor(data$images_ordered___1,levels=c("0","1"))
data$images_ordered___2.factor = factor(data$images_ordered___2,levels=c("0","1"))
data$images_ordered___3.factor = factor(data$images_ordered___3,levels=c("0","1"))
data$images_ordered___4.factor = factor(data$images_ordered___4,levels=c("0","1"))
data$images_ordered___5.factor = factor(data$images_ordered___5,levels=c("0","1"))
data$blood_tests_ordered.factor = factor(data$blood_tests_ordered,levels=c("1","0"))
data$blood_test_ordered___1.factor = factor(data$blood_test_ordered___1,levels=c("0","1"))
data$blood_test_ordered___2.factor = factor(data$blood_test_ordered___2,levels=c("0","1"))
data$blood_test_ordered___3.factor = factor(data$blood_test_ordered___3,levels=c("0","1"))
data$blood_test_ordered___26.factor = factor(data$blood_test_ordered___26,levels=c("0","1"))
data$blood_test_ordered___25.factor = factor(data$blood_test_ordered___25,levels=c("0","1"))
data$blood_test_ordered___21.factor = factor(data$blood_test_ordered___21,levels=c("0","1"))
data$blood_test_ordered___22.factor = factor(data$blood_test_ordered___22,levels=c("0","1"))
data$blood_test_ordered___4.factor = factor(data$blood_test_ordered___4,levels=c("0","1"))
data$blood_test_ordered___6.factor = factor(data$blood_test_ordered___6,levels=c("0","1"))
data$blood_test_ordered___7.factor = factor(data$blood_test_ordered___7,levels=c("0","1"))
data$blood_test_ordered___8.factor = factor(data$blood_test_ordered___8,levels=c("0","1"))
data$blood_test_ordered___9.factor = factor(data$blood_test_ordered___9,levels=c("0","1"))
data$blood_test_ordered___10.factor = factor(data$blood_test_ordered___10,levels=c("0","1"))
data$blood_test_ordered___11.factor = factor(data$blood_test_ordered___11,levels=c("0","1"))
data$blood_test_ordered___12.factor = factor(data$blood_test_ordered___12,levels=c("0","1"))
data$blood_test_ordered___14.factor = factor(data$blood_test_ordered___14,levels=c("0","1"))
data$blood_test_ordered___15.factor = factor(data$blood_test_ordered___15,levels=c("0","1"))
data$blood_test_ordered___16.factor = factor(data$blood_test_ordered___16,levels=c("0","1"))
data$blood_test_ordered___17.factor = factor(data$blood_test_ordered___17,levels=c("0","1"))
data$blood_test_ordered___18.factor = factor(data$blood_test_ordered___18,levels=c("0","1"))
data$blood_test_ordered___19.factor = factor(data$blood_test_ordered___19,levels=c("0","1"))
data$blood_test_ordered___20.factor = factor(data$blood_test_ordered___20,levels=c("0","1"))
data$blood_test_ordered___23.factor = factor(data$blood_test_ordered___23,levels=c("0","1"))
data$blood_test_ordered___24.factor = factor(data$blood_test_ordered___24,levels=c("0","1"))
data$blood_test_ordered___13.factor = factor(data$blood_test_ordered___13,levels=c("0","1"))
data$medical_history___1.factor = factor(data$medical_history___1,levels=c("0","1"))
data$medical_history___2.factor = factor(data$medical_history___2,levels=c("0","1"))
data$medical_history___3.factor = factor(data$medical_history___3,levels=c("0","1"))
data$medical_history___4.factor = factor(data$medical_history___4,levels=c("0","1"))
data$medical_history___6.factor = factor(data$medical_history___6,levels=c("0","1"))
data$medical_history___7.factor = factor(data$medical_history___7,levels=c("0","1"))
data$medical_history___8.factor = factor(data$medical_history___8,levels=c("0","1"))
data$medical_history___5.factor = factor(data$medical_history___5,levels=c("0","1"))
data$disposition.factor = factor(data$disposition,levels=c("1","2","3","4"))
data$away_adjuncts___1.factor = factor(data$away_adjuncts___1,levels=c("0","1"))
data$away_adjuncts___2.factor = factor(data$away_adjuncts___2,levels=c("0","1"))
data$away_adjuncts___3.factor = factor(data$away_adjuncts___3,levels=c("0","1"))
data$away_adjuncts___4.factor = factor(data$away_adjuncts___4,levels=c("0","1"))
data$away_adjuncts___5.factor = factor(data$away_adjuncts___5,levels=c("0","1"))
data$away_adjuncts___6.factor = factor(data$away_adjuncts___6,levels=c("0","1"))
data$away_adjuncts___7.factor = factor(data$away_adjuncts___7,levels=c("0","1"))
data$away_adjuncts___8.factor = factor(data$away_adjuncts___8,levels=c("0","1"))
data$day_mortality.factor = factor(data$day_mortality,levels=c("1","2","3","4","5"))
data$ehr_data_complete.factor = factor(data$ehr_data_complete,levels=c("0","1","2"))
data$this_odor_smells_most_like.factor = factor(data$this_odor_smells_most_like,levels=c("1","2","3","4"))
data$this_odor_smells_most_2.factor = factor(data$this_odor_smells_most_2,levels=c("1","2","3","4"))
data$this_odor_smells_most_3.factor = factor(data$this_odor_smells_most_3,levels=c("1","2","3","4"))
data$this_odor_smells_most_4.factor = factor(data$this_odor_smells_most_4,levels=c("1","2","3","4"))
data$this_odor_smells_most_5.factor = factor(data$this_odor_smells_most_5,levels=c("1","2","3","4"))
data$this_odor_smells_most_6.factor = factor(data$this_odor_smells_most_6,levels=c("1","2","3","4"))
data$this_odor_smells_most_7.factor = factor(data$this_odor_smells_most_7,levels=c("1","2","3","4"))
data$this_odor_smells_most_8.factor = factor(data$this_odor_smells_most_8,levels=c("1","2","3","4"))
data$this_odor_smells_most_9.factor = factor(data$this_odor_smells_most_9,levels=c("1","2","3","4"))
data$this_odor_smells_most_10.factor = factor(data$this_odor_smells_most_10,levels=c("1","2","3","4"))
data$this_odor_smells_most_11.factor = factor(data$this_odor_smells_most_11,levels=c("1","2","3","4"))
data$this_odor_smells_most_12.factor = factor(data$this_odor_smells_most_12,levels=c("1","2","3","4"))
data$bsit_data_complete.factor = factor(data$bsit_data_complete,levels=c("0","1","2"))

levels(data$please_rate_your_current_s.factor)=c("normal","decreased","absent","NA (pre-amendment)")
levels(data$is_your_nose_currently_blo.factor)=c("Yes","No","NA (pre-amendment)")
levels(data$age.factor)=c("18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90 and older")
levels(data$race.factor)=c("White","Black","Multiracial")
levels(data$sex.factor)=c("Male","Female","I")
levels(data$screening___1.factor)=c("Unchecked","Checked")
levels(data$screening___2.factor)=c("Unchecked","Checked")
levels(data$screening___3.factor)=c("Unchecked","Checked")
levels(data$screening___7.factor)=c("Unchecked","Checked")
levels(data$screening___4.factor)=c("Unchecked","Checked")
levels(data$screening___5.factor)=c("Unchecked","Checked")
levels(data$screening___6.factor)=c("Unchecked","Checked")
levels(data$illicit_drug_use.factor)=c("Yes","No","Unavailable")
levels(data$tobacco_use.factor)=c("Yes","No","Former","Unavailable")
levels(data$smokeless_tabacco.factor)=c("Yes","No")
levels(data$imaging_ordered.factor)=c("Yes","No")
levels(data$images_ordered___1.factor)=c("Unchecked","Checked")
levels(data$images_ordered___2.factor)=c("Unchecked","Checked")
levels(data$images_ordered___3.factor)=c("Unchecked","Checked")
levels(data$images_ordered___4.factor)=c("Unchecked","Checked")
levels(data$images_ordered___5.factor)=c("Unchecked","Checked")
levels(data$blood_tests_ordered.factor)=c("Yes","No")
levels(data$blood_test_ordered___1.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___2.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___3.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___26.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___25.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___21.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___22.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___4.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___6.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___7.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___8.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___9.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___10.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___11.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___12.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___14.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___15.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___16.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___17.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___18.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___19.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___20.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___23.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___24.factor)=c("Unchecked","Checked")
levels(data$blood_test_ordered___13.factor)=c("Unchecked","Checked")
levels(data$medical_history___1.factor)=c("Unchecked","Checked")
levels(data$medical_history___2.factor)=c("Unchecked","Checked")
levels(data$medical_history___3.factor)=c("Unchecked","Checked")
levels(data$medical_history___4.factor)=c("Unchecked","Checked")
levels(data$medical_history___6.factor)=c("Unchecked","Checked")
levels(data$medical_history___7.factor)=c("Unchecked","Checked")
levels(data$medical_history___8.factor)=c("Unchecked","Checked")
levels(data$medical_history___5.factor)=c("Unchecked","Checked")
levels(data$disposition.factor)=c("Admitted","Discharged","Transfered","Deceased")
levels(data$away_adjuncts___1.factor)=c("Unchecked","Checked")
levels(data$away_adjuncts___2.factor)=c("Unchecked","Checked")
levels(data$away_adjuncts___3.factor)=c("Unchecked","Checked")
levels(data$away_adjuncts___4.factor)=c("Unchecked","Checked")
levels(data$away_adjuncts___5.factor)=c("Unchecked","Checked")
levels(data$away_adjuncts___6.factor)=c("Unchecked","Checked")
levels(data$away_adjuncts___7.factor)=c("Unchecked","Checked")
levels(data$away_adjuncts___8.factor)=c("Unchecked","Checked")
levels(data$day_mortality.factor)=c("Alive","Deceased","Inpatient","Rehab","Other")
levels(data$ehr_data_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$this_odor_smells_most_like.factor)=c("Fruit","Cinnamon","Wood","Coconut")
levels(data$this_odor_smells_most_2.factor)=c("Turpentine","Soap","Dog","Black Pepper")
levels(data$this_odor_smells_most_3.factor)=c("Motor Oil","Garlic","Rose","Lemon")
levels(data$this_odor_smells_most_4.factor)=c("Apple","Grass","Smoke","Grape")
levels(data$this_odor_smells_most_5.factor)=c("Lemon","Chocolate","Strawberry","Black Pepper")
levels(data$this_odor_smells_most_6.factor)=c("Mint","Rose","Lime","Fruit")
levels(data$this_odor_smells_most_7.factor)=c("Watermelon","Peanut","Rose","Paint Thinner")
levels(data$this_odor_smells_most_8.factor)=c("Banana","Garlic","Cherry","Motor Oil")
levels(data$this_odor_smells_most_9.factor)=c("Smoke","Whiskey","Pineapple","Onion")
levels(data$this_odor_smells_most_10.factor)=c("Rose","Lemon","Apple","Gasoline")
levels(data$this_odor_smells_most_11.factor)=c("Soap","Black Pepper","Chocolate","Peanut")
levels(data$this_odor_smells_most_12.factor)=c("Chocolate","Banana","Onion","Fruit")
levels(data$bsit_data_complete.factor)=c("Incomplete","Unverified","Complete")

save(data, file="anosmia.Rdata")
