# Heart_Analysis_Detection_Project

### Data Description:
| Feature Name | Included in Model  | Name in Data | Data type & units | Column Type |
|---------|---------|---------|---------|--------|
| Age | No | age | int (days) |
| Age in years | No | age_year | int (years)| Calculated column |
| Age Groups | No | age_group | categorical code | Calculated column |
| Age Groups Encoded | Yes: Objective Feature | age_group_encoded | 0: <40, 1: 40-49, 2: 50-59, 3: 60-89 | Encoded |
| Height | No | height | int (cm) |
| Weight | No| weight | float (kg) |
| BMI | No | bmi | int | Calculated column |
| BMI Status | No | bmi_status | categorical code | Calculated column |
| BMI Status Encoded | Yes: Objective Feature | bmi_status_encoded | 0: underweight, 1: healthy, 2: overweight, 3: obese | Encoded |
| Gender | Yes: Objective Feature | gender | categorical code |
| Systolic blood pressure | No| ap_hi | int |
| Systolic blood pressure Status | No | ap_hi_status | categorical code | Calculated column |
| Systolic blood pressure Status Encoded | Yes: Examination Feature | ap_hi_status_encoded | 0: normal, 1: elevated, 2: high_blood_pressure_1, 3: high_blood_pressure_2 | Encoded |
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
The targest value counts are equal to 0: 34753 and 1: 33394. The data was split into testing and training sets with random_state=1, train_size=0.7, test_size=0.3, stratify=y. 
* Balanced Random Forest Classifier
  * ![brf_test_accuracy.png](https://github.com/pasmi369/Heart_Analysis_Detection_Project/blob/MachineLearning/Resources/brf_test_accuracy.png)
* SMOTEENN
  * ![SMOTEENN_test_accuracy.png](https://github.com/pasmi369/Heart_Analysis_Detection_Project/blob/MachineLearning/Resources/SMOTEENN_test_accuracy.png)
* SMOTE Oversampling
  * ![SMOTE_Oversampling_test](https://github.com/pasmi369/Heart_Analysis_Detection_Project/blob/MachineLearning/Resources/SMOTE_Oversampling_test_accuracy.png)
* Easy Ensemble Classifier
  * ![ee_test_accuracy.png](https://github.com/pasmi369/Heart_Analysis_Detection_Project/blob/MachineLearning/Resources/ee_test_accuracy.png)

## Model Trained
Two models were chosen to optimize and train: Balanced Random Forest Classifier and SMOTE Oversampling.
### Optimization of the Model
The goal for optimizing the models was to reach at least 75% accuracy. 
* General optimization occured in editing the split between the training and the testing set.
```python
# Starting split
X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=1, train_size=0.7, test_size=0.3, stratify=y)
# Optimization try 1.1
X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=1, train_size=0.8, test_size=0.2, stratify=y)
# Optimization try 1.2
X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=1, stratify=y)
```
* Balanced Random Forest Classifier
```python
# Starting Classifier
brf_model = BalancedRandomForestClassifier(n_estimators=150, random_state=1)
# Optimization try 2.1
brf_model = BalancedRandomForestClassifier(n_estimators=175, random_state=10)
# Optimization try 2.2
brf_model = BalancedRandomForestClassifier(n_estimators=160, random_state=1, n_samples=500)
```
* SMOTE Oversampling
```python
# Starting Resample
smote = SMOTE(random_state=1)
# Optimization try 3.1
smote = SMOTE(random_state=42)
# Optimization try 3.2
smote = SMOTE(random_state=42, n_samples=500)
```
### Final Optimization Settings
## Final Model Accuracy
* Balanced Random Forest Classifier
 * [put accuracy png here]
* SMOTE Oversampling
 * [put accuracy png here]
