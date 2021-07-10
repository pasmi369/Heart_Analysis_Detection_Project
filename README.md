# Heart_Analysis_Detection_Project
## Introduction
- Heart disease describes a range of conditions that affect your heart. Diseases under the heart disease umbrella include blood vessel diseases, such as coronary artery disease, heart rhythm problems (arrhythmias) and heart defects you’re born with (congenital heart defects), among others.
 
![cardiovascular_system](./Resources/cardiovascular_system.jpeg)

- The term “heart disease” is often used interchangeably with the term “cardiovascular disease”. Cardiovascular disease generally refers to conditions that involve narrowed or blocked blood vessels that can lead to a heart attack, chest pain (angina) or stroke. 
- According to a news article, heart disease proves to be the leading cause of death for both women and men. The article states the following :
  - About 610,000 people die of heart disease in the United States every year–that’s 1 in every 4 deaths.
  - Heart disease is the leading cause of death for both men and women. More than half of the deaths due to heart disease in 2009 were in men.
  - Coronary Heart Disease(CHD) is the most common type of heart disease, killing over 370,000 people annually.
  - Every year about 735,000 Americans have a heart attack. Of these, 525,000 are a first heart attack and 210,000 happen in people who have already had a heart attack.

![heart_valves](./Resources/heart_valves.jpeg)

## Goal:
- Predict whether a patient should be diagnosed with Heart Disease. This is a binary outcome.
  - Positive (+) = 1, patient diagnosed with Heart Disease.
  - Negative (-) = 0, patient not diagnosed with Heart Disease.
- Experiment with various Classification Models & see which yields greatest accuracy.
- Examine trends & correlations within our data.
- Determine which features are most important to Positive/Negative Heart Disease diagnosis.

## Technologies Used
### Data Cleansing in ETL Tools
 - This project will be an introduction ot the EXTRACT, TRANSFORM, and LOAD process.
 - Using the ETL process to clean data. The ETL function will be created to collect and cleans cardio data.
 - Pandas will be used to clean the data and perform exploratory analysis.
 - Using jupyter notebook and the running cvs file dataframe
 - Check column

### Database
 - PostgreSQL is the database we want to to use, and the options we have are:
 1. to create a PorstgreSQL database locally, or
 2. to create it on AWS (Amazon RDS (Relational Database Service) web service.
 We will use pgAdmin to manage the database and tables.

### Machine Learning
- SciKitLearn is the ML library we'll be using to create a classifier. Our training and testing setup is Random Forest Classifier
- Methods we will use are SMOTEENN and SMOTE Oversampling 

### Dashboard
- In addition to using a Tableau, we can also use flask template with integrated D3.js for a fully functioning and interactive dashboard.

### Communication Protocols
* Slack - used for write communication 
* GoogleDrive - file sharing
* GitHub - code sharing
* Zoom - web meeting

## ETL Process
### Columns to create:
  - BMI into Obesity (Calculation based on height and weight)
    - The formula is BMI = kg/m2 where kg is a person's weight in kilograms and m2 is their height in metres squared. A BMI of 25.0 or more is overweight, while the healthy range is 18.5 to 24.9.
  - Age into Age in Years 
  - Age Ranges(for ex: ([35-39],[40-44].....[65-90])
  - Group by
  - Cholesterol levels (max, min)
  - Glucose levels (max, min)
  - Activity levels (max, min)
