select * from cod.worlds_death;

-- 1 List out the country name where the death occurs

select CountryTerritory from cod.worlds_death group by CountryTerritory having sum(Meningitis AND Alzheimers_Disease_and_Other_Dementias 
AND Parkinsons_Disease AND Nutritional_Deficiencies AND Malaria AND Drowning AND Interpersonal_Violence AND Maternal_Disorders AND HIVAIDS AND Drug_Use_Disorders 
AND Tuberculosis AND Cardiovascular_Diseases AND Lower_Respiratory_Infections AND Neonatal_Disorders AND Alcohol_Use_Disorders AND Selfharm AND Exposure_to_Forces_of_Nature 
AND Diarrheal_Diseases AND Environmental_Heat_and_Cold_Exposure AND Neoplasms AND Conflict_and_Terrorism AND Diabetes_Mellitus AND Chronic_Kidney_Disease AND Poisonings 
AND ProteinEnergy_Malnutrition AND Road_Injuries AND Chronic_Respiratory_Diseases 
AND Cirrhosis_and_Other_Chronic_Liver_Diseases AND Digestive_Diseases 
AND Fire_Heat_and_Hot_Substances AND Acute_Hepatitis)>0;


-- 2 Total no of Country/Territory in which the death occured

select distinct count(CountryTerritory) as total_no_of_country from cod.worlds_death group by Year having sum(Meningitis AND Alzheimers_Disease_and_Other_Dementias 
AND Parkinsons_Disease AND Nutritional_Deficiencies AND Malaria AND Drowning AND Interpersonal_Violence AND Maternal_Disorders AND HIVAIDS AND Drug_Use_Disorders 
AND Tuberculosis AND Cardiovascular_Diseases AND Lower_Respiratory_Infections AND Neonatal_Disorders AND Alcohol_Use_Disorders AND Selfharm AND Exposure_to_Forces_of_Nature 
AND Diarrheal_Diseases AND Environmental_Heat_and_Cold_Exposure AND Neoplasms AND Conflict_and_Terrorism AND Diabetes_Mellitus AND Chronic_Kidney_Disease AND Poisonings 
AND ProteinEnergy_Malnutrition AND Road_Injuries AND Chronic_Respiratory_Diseases 
AND Cirrhosis_and_Other_Chronic_Liver_Diseases AND Digestive_Diseases 
AND Fire_Heat_and_Hot_Substances AND Acute_Hepatitis)>0;


-- 3 Display the Country/Territory Name and  total no of deaths

select CountryTerritory,sum(Meningitis + Alzheimers_Disease_and_Other_Dementias 
+ Parkinsons_Disease + Nutritional_Deficiencies + Malaria + Drowning + Interpersonal_Violence + Maternal_Disorders + HIVAIDS + Drug_Use_Disorders 
+ Tuberculosis + Cardiovascular_Diseases + Lower_Respiratory_Infections + Neonatal_Disorders + Alcohol_Use_Disorders + Selfharm + Exposure_to_Forces_of_Nature 
+ Diarrheal_Diseases + Environmental_Heat_and_Cold_Exposure + Neoplasms + Conflict_and_Terrorism + Diabetes_Mellitus + Chronic_Kidney_Disease + Poisonings 
+ ProteinEnergy_Malnutrition + Road_Injuries + Chronic_Respiratory_Diseases 
+ Cirrhosis_and_Other_Chronic_Liver_Diseases + Digestive_Diseases 
+ Fire_Heat_and_Hot_Substances + Acute_Hepatitis) as total_no_of_deaths from cod.worlds_death group by CountryTerritory; 


-- 4 Display the Top 10 Countries based on the highest deaths

select CountryTerritory from cod.worlds_death group by CountryTerritory order by sum(Meningitis + Alzheimers_Disease_and_Other_Dementias 
+ Parkinsons_Disease + Nutritional_Deficiencies + Malaria + Drowning + Interpersonal_Violence + Maternal_Disorders + HIVAIDS + Drug_Use_Disorders 
+ Tuberculosis + Cardiovascular_Diseases + Lower_Respiratory_Infections + Neonatal_Disorders + Alcohol_Use_Disorders + Selfharm + Exposure_to_Forces_of_Nature 
+ Diarrheal_Diseases + Environmental_Heat_and_Cold_Exposure + Neoplasms + Conflict_and_Terrorism + Diabetes_Mellitus + Chronic_Kidney_Disease + Poisonings 
+ ProteinEnergy_Malnutrition + Road_Injuries + Chronic_Respiratory_Diseases 
+ Cirrhosis_and_Other_Chronic_Liver_Diseases + Digestive_Diseases 
+ Fire_Heat_and_Hot_Substances + Acute_Hepatitis) desc limit 10; 


-- 5 Display the Top 10 Countries based on the lowest deaths

select CountryTerritory from cod.worlds_death group by CountryTerritory order by sum(Meningitis + Alzheimers_Disease_and_Other_Dementias 
+ Parkinsons_Disease + Nutritional_Deficiencies + Malaria + Drowning + Interpersonal_Violence + Maternal_Disorders + HIVAIDS + Drug_Use_Disorders 
+ Tuberculosis + Cardiovascular_Diseases + Lower_Respiratory_Infections + Neonatal_Disorders + Alcohol_Use_Disorders + Selfharm + Exposure_to_Forces_of_Nature 
+ Diarrheal_Diseases + Environmental_Heat_and_Cold_Exposure + Neoplasms + Conflict_and_Terrorism + Diabetes_Mellitus + Chronic_Kidney_Disease + Poisonings 
+ ProteinEnergy_Malnutrition + Road_Injuries + Chronic_Respiratory_Diseases 
+ Cirrhosis_and_Other_Chronic_Liver_Diseases + Digestive_Diseases 
+ Fire_Heat_and_Hot_Substances + Acute_Hepatitis) asc limit 10; 


-- 6 Total no of people died  due to disorders

select sum( Maternal_Disorders +Drug_Use_Disorders 
+ Neonatal_Disorders +Alcohol_Use_Disorders) as total_deaths_due_to_disorders from cod.worlds_death;


-- 7 Total no of people died  due to diseases

select sum(Meningitis + Alzheimers_Disease_and_Other_Dementias 
+ Parkinsons_Disease + Malaria + Drowning + Interpersonal_Violence +  HIVAIDS + Tuberculosis + Cardiovascular_Diseases + Lower_Respiratory_Infections+ Selfharm + Exposure_to_Forces_of_Nature 
+ Diarrheal_Diseases + Environmental_Heat_and_Cold_Exposure + Neoplasms + Conflict_and_Terrorism + Diabetes_Mellitus + Chronic_Kidney_Disease + Poisonings + Road_Injuries + Chronic_Respiratory_Diseases 
+ Cirrhosis_and_Other_Chronic_Liver_Diseases + Digestive_Diseases 
+ Fire_Heat_and_Hot_Substances + Acute_Hepatitis) as total_deaths_due_to_diseases from cod.worlds_death;


-- 8 Total no of people died  due to nutrient deficiency / malnutrient

select sum(Nutritional_Deficiencies + ProteinEnergy_Malnutrition) as total_deaths_due_to_lack_of_nutrients from cod.worlds_death;


-- 9 Display the Top 10 Countries based on the highest deaths occured due to disorders

select CountryTerritory from cod.worlds_death group by CountryTerritory order by sum( Maternal_Disorders +Drug_Use_Disorders 
+ Neonatal_Disorders +Alcohol_Use_Disorders) desc limit 10;


-- 10 Display the Top 10 Countries based on the highest deaths occured due to diseases

select CountryTerritory from cod.worlds_death group by CountryTerritory order by sum(Meningitis + Alzheimers_Disease_and_Other_Dementias 
+ Parkinsons_Disease + Malaria + Drowning + Interpersonal_Violence +  HIVAIDS + Tuberculosis + Cardiovascular_Diseases + Lower_Respiratory_Infections+ Selfharm + Exposure_to_Forces_of_Nature 
+ Diarrheal_Diseases + Environmental_Heat_and_Cold_Exposure + Neoplasms + Conflict_and_Terrorism + Diabetes_Mellitus + Chronic_Kidney_Disease + Poisonings + Road_Injuries + Chronic_Respiratory_Diseases 
+ Cirrhosis_and_Other_Chronic_Liver_Diseases + Digestive_Diseases 
+ Fire_Heat_and_Hot_Substances + Acute_Hepatitis) desc limit 10;


-- 11 Display the Top 10 Countries based on the highest deaths occured due to lack of nutrients

select CountryTerritory from cod.worlds_death group by CountryTerritory order by sum(Nutritional_Deficiencies + ProteinEnergy_Malnutrition) desc limit 10;


-- 12 Display the Top 10 Countries based on the least deaths occured due to disorders

select CountryTerritory from cod.worlds_death group by CountryTerritory order by sum( Maternal_Disorders +Drug_Use_Disorders 
+ Neonatal_Disorders +Alcohol_Use_Disorders) asc limit 10;


-- 13 Display the Top 10 Countries based on the least deaths occured due to diseases

select CountryTerritory from cod.worlds_death group by CountryTerritory order by sum(Meningitis + Alzheimers_Disease_and_Other_Dementias 
+ Parkinsons_Disease + Malaria + Drowning + Interpersonal_Violence +  HIVAIDS + Tuberculosis + Cardiovascular_Diseases + Lower_Respiratory_Infections+ Selfharm + Exposure_to_Forces_of_Nature 
+ Diarrheal_Diseases + Environmental_Heat_and_Cold_Exposure + Neoplasms + Conflict_and_Terrorism + Diabetes_Mellitus + Chronic_Kidney_Disease + Poisonings + Road_Injuries + Chronic_Respiratory_Diseases 
+ Cirrhosis_and_Other_Chronic_Liver_Diseases + Digestive_Diseases 
+ Fire_Heat_and_Hot_Substances + Acute_Hepatitis) asc limit 10;


-- 14 Display the Top 10 Countries based on the least deaths occured due to lack of nutrients

select CountryTerritory from cod.worlds_death group by CountryTerritory order by sum(Nutritional_Deficiencies + ProteinEnergy_Malnutrition) asc limit 10;


-- 15 Country with the highest death

select CountryTerritory as country_with_highest_death from cod.worlds_death group by CountryTerritory order by sum(Meningitis + Alzheimers_Disease_and_Other_Dementias 
+ Parkinsons_Disease + Nutritional_Deficiencies + Malaria + Drowning + Interpersonal_Violence + Maternal_Disorders + HIVAIDS + Drug_Use_Disorders 
+ Tuberculosis + Cardiovascular_Diseases + Lower_Respiratory_Infections + Neonatal_Disorders + Alcohol_Use_Disorders + Selfharm + Exposure_to_Forces_of_Nature 
+ Diarrheal_Diseases + Environmental_Heat_and_Cold_Exposure + Neoplasms + Conflict_and_Terrorism + Diabetes_Mellitus + Chronic_Kidney_Disease + Poisonings 
+ ProteinEnergy_Malnutrition + Road_Injuries + Chronic_Respiratory_Diseases 
+ Cirrhosis_and_Other_Chronic_Liver_Diseases + Digestive_Diseases 
+ Fire_Heat_and_Hot_Substances + Acute_Hepatitis) desc limit 1;


-- 16 Country with the least death

select CountryTerritory as country_with_least_death from cod.worlds_death group by CountryTerritory order by sum(Meningitis + Alzheimers_Disease_and_Other_Dementias 
+ Parkinsons_Disease + Nutritional_Deficiencies + Malaria + Drowning + Interpersonal_Violence + Maternal_Disorders + HIVAIDS + Drug_Use_Disorders 
+ Tuberculosis + Cardiovascular_Diseases + Lower_Respiratory_Infections + Neonatal_Disorders + Alcohol_Use_Disorders + Selfharm + Exposure_to_Forces_of_Nature 
+ Diarrheal_Diseases + Environmental_Heat_and_Cold_Exposure + Neoplasms + Conflict_and_Terrorism + Diabetes_Mellitus + Chronic_Kidney_Disease + Poisonings 
+ ProteinEnergy_Malnutrition + Road_Injuries + Chronic_Respiratory_Diseases 
+ Cirrhosis_and_Other_Chronic_Liver_Diseases + Digestive_Diseases 
+ Fire_Heat_and_Hot_Substances + Acute_Hepatitis) asc limit 1;


-- 17 Top 3 Countries with highest death due to HIVAIDS

select CountryTerritory as Top_3_Countries_with_highest_HIVaids_deaths from cod.worlds_death group by CountryTerritory order by sum(HIVAIDS) desc limit 3;


-- 18 Top 3 Countries with lowest death due to HIVAIDS

select CountryTerritory as Top_3_Countries_with_lowest_HIVaids_deaths from cod.worlds_death group by CountryTerritory order by sum(HIVAIDS) asc limit 3;


-- 19 Total death occured in each year of each country

select CountryTerritory as country_with_least_death,Year,sum(Meningitis + Alzheimers_Disease_and_Other_Dementias 
+ Parkinsons_Disease + Nutritional_Deficiencies + Malaria + Drowning + Interpersonal_Violence + Maternal_Disorders + HIVAIDS + Drug_Use_Disorders 
+ Tuberculosis + Cardiovascular_Diseases + Lower_Respiratory_Infections + Neonatal_Disorders + Alcohol_Use_Disorders + Selfharm + Exposure_to_Forces_of_Nature 
+ Diarrheal_Diseases + Environmental_Heat_and_Cold_Exposure + Neoplasms + Conflict_and_Terrorism + Diabetes_Mellitus + Chronic_Kidney_Disease + Poisonings 
+ ProteinEnergy_Malnutrition + Road_Injuries + Chronic_Respiratory_Diseases 
+ Cirrhosis_and_Other_Chronic_Liver_Diseases + Digestive_Diseases 
+ Fire_Heat_and_Hot_Substances + Acute_Hepatitis) as total from cod.worlds_death group by CountryTerritory,Year;

-- sql code of extracted table for the 20th query

select CountryTerritory as country_with_least_death,sum(Meningitis + Alzheimers_Disease_and_Other_Dementias 
+ Parkinsons_Disease + Nutritional_Deficiencies + Malaria + Drowning + Interpersonal_Violence + Maternal_Disorders + HIVAIDS + Drug_Use_Disorders 
+ Tuberculosis + Cardiovascular_Diseases + Lower_Respiratory_Infections + Neonatal_Disorders + Alcohol_Use_Disorders + Selfharm + Exposure_to_Forces_of_Nature 
+ Diarrheal_Diseases + Environmental_Heat_and_Cold_Exposure + Neoplasms + Conflict_and_Terrorism + Diabetes_Mellitus + Chronic_Kidney_Disease + Poisonings 
+ ProteinEnergy_Malnutrition + Road_Injuries + Chronic_Respiratory_Diseases 
+ Cirrhosis_and_Other_Chronic_Liver_Diseases + Digestive_Diseases 
+ Fire_Heat_and_Hot_Substances + Acute_Hepatitis) as total_no_of_deaths from cod.worlds_death group by CountryTerritory;


-- 20 Add a new column and mark the cricality of each country as per deaths range order by criticality

select CountryTerritory,  
case 
when total_no_of_deaths BETWEEN 100000000 AND 300000000 then "High Critical"
when total_no_of_deaths BETWEEN 10000000 AND 100000000 then "Critical"
when total_no_of_deaths BETWEEN 1000000 AND 100000000 then "Average"
when total_no_of_deaths BETWEEN 10000 AND 1000000 then "Low"
else "Very Low" End as Criticality from cod.total_no_of_deaths order by criticality;