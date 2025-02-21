

**Performance Feedback, Professionalism, and the Efficiency of Non-profit Organizations: A Cognitive Evaluation Perspective**



**Overview**



This project aims to replicate the tables (2-9) from the referenced paper using Stata. It includes the regression analysis based on a provided dataset and generates the necessary statistical outputs. The goal is to demonstrate the replicability of the results and the usage of regression techniques with interaction variables.



**Files Included**

​	•	**Data Set**: NGOs.dta - The dataset used for the regression analyses.

​	•	**Stata Code**: Scripts for replicating the tables (2-9) in the paper using Stata.



**Description of the Variables**



The dataset contains the following variables:

​	•	**code**: ID of the organization

​	•	**org_name**: Name of the organization

​	•	**org_age**: Age of the organization

​	•	**certificate**: A dummy variable (1 if the organization has obtained a fundraising certificate, 0 otherwise)

​	•	**num_of_supervisors**: Number of supervisors in the organization

​	•	**num_of_directors**: Number of directors in the organization

​	•	**average_systems**: Average number of systems each organization has

​	•	**rating_difference**: Difference in ratings across the organization

​	•	**LPE**: A variable indicating leadership performance efficiency

​	•	**admin_efficiency**: Administrative efficiency of the organization

​	•	**overhead_efficiency**: Overhead efficiency of the organization



The analysis is conducted using Stata, which performs regressions with interaction variables. The interaction terms are created as:

​	•	**LPE_rating_difference**: Interaction of LPE and rating_difference

​	•	**LPE_average_systems**: Interaction of LPE and average_systems



**How to Generate the Results**



To generate the results for the tables (2-9), follow these steps:

​	1.	**Place the dataset and code in the same folder**:

Ensure that the NGOs.dta file and the Stata .do files are located in the same directory.

​	2.	**Run the Stata Code**:

Open Stata (recommend 18.0), load the corresponding .do file, and execute the code by running each file.

​	3.	**View the Results**:

The regression outputs will be generated within Stata. After running the provided scripts, you can directly view the results in the Stata output window. Each regression result corresponds to one of the tables (2-9) from the referenced paper. 

