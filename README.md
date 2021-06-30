# Heart_Analysis_Detection_Project

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
