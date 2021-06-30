# Heart_Analysis_Detection_Project

### Data Description:
| Feature Name | Included in Model  | Name in Data | Data type & units | Calculated column |
|---------|---------|---------|---------|--------|
| Age | No | age | int (days) |
| Age in years | No | age_year | int (years)| Calculated column |
| Age Groups | No | age_group | categorical code | Calculated column |
| Age Groups Encoded | Yes: Objective Feature | age_group_encoded | 0: <40, 1: 40-49, 2: 50-59, 3: 60-89 | Encoded |
| Height | No | height | int (cm) |
| Weight | No| weight | float (kg) |
| BMI | No | bmi | int | Calculated column |
| BMI Status | No | bmi_status | categorical code | Calculated column |
| BMI Status Encoded | Yes: Objective Feature | bmi_status_encoded | 0: underweight, 1: healthy, 2: overweight, 3: "obese" | Encoded |
| Gender | Yes: Objective Feature | gender | categorical code |
| Systolic blood pressure | No| ap_hi | int |
| Systolic blood pressure Status | No | ap_hi_status | categorical code | Calculated column |
| Systolic blood pressure Status Encoded | Yes: Examination Feature | ap_hi_status_encoded | 0: normal, 1: elevated, 2: high_blood_pressure_1, 3: high_blood_pressure_2,4: hypertensive_crisis | Encoded |
| Diastolic blood pressure | No| ap_lo | int |
| Diastolic blood pressure Status | No | ap_lo_status | categorical code | Calculated column |
| Diastolic blood pressure Status Encoded | Yes: Examination Feature | ap_lo_status_encoded | 0 : normal, 1: high_blood_pressure_1, 2: high_blood_pressure_2, 3: hypertensive_crisis | Encoded |
| Cholesterol | Yes: Examination Feature | cholesterol | 1: normal, 2: above normal, 3: well above normal |
| Glucose | Yes: Examination Feature | gluc | 1: normal, 2: above normal, 3: well above normal |
| Smoking | Yes: Subjective Feature | smoke | binary |
| Alcohol intake | Yes: Subjective Feature | alco | binary |
| Physical activity | Yes: Subjective Feature | active | binary |
| Presence or absence of cardiovascular disease | Target Variable | cardio | binary | 

## Models tested
* Balanced Random Forest Classifier
* SMOTEENN
* SMOTE Oversampling
* Easy Ensemble Classifier
