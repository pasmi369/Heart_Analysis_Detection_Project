# Heart_Analysis_Detection_Project

### Data Description:
| Feature Name | Feature Type | Name in Data | Data type & unit | Calculated column |
|----------|--------|-------|---------|---------|
| Age | Objective Feature | age | int (days)
| Age in years | Objective Feature | age_year | int (years)| Calculated column |
| Age Range | Objective Feature | age_range | categorical code | Calculated column |
| Height | Objective Feature | height | int (cm) |
| Weight | Objective Feature | weight | float (kg) |
| BMI | Objective Feature | bmi | int | Calculated column |
| Gender | Objective Feature | gender | categorical code |
| Systolic blood pressure | Examination Feature | ap_hi | int |
| Diastolic blood pressure | Examination Feature | ap_lo | int |
| Cholesterol | Examination Feature | cholesterol | 1: normal, 2: above normal, 3: well above normal |
| Glucose | Examination Feature | gluc | 1: normal, 2: above normal, 3: well above normal |
| Smoking | Subjective Feature | smoke | binary |
| Alcohol intake | Subjective Feature | alco | binary |
| Physical activity | Subjective Feature | active | binary |
| Presence or absence of cardiovascular disease | Target Variable | cardio | binary | 

## Models tested
* Random Forest Classifier
* SMOTEENN
* SMOTE Oversampling
