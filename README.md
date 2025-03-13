Cantonese Children's Presupposition Comprehension Analysis and Visualizations


1. Overview 

This R script provides data visualizations for a dataset from Cheung et al. (2017) (https://osf.io/u2wsz/) on Cantonese-speaking children's understanding of presuppositions triggered by various grammatical configurations. These configurations include factive presuppositions, existential presuppositions, and those arising from lexical and structural factors. In addition to that, the dataset includes variables such as age, sex, Autism Spectrum Disorder (ASD) diagnosis, and accuracy in presupposition comprehension tests. This script explores relationships between these variables and the children’s comprehension rates through several visualizations.


2. Dataset

2.1 Source

The dataset used for this analysis is available here:  https://osf.io/t3a9x


2.2 Dataset Structure

The dataset contains the following columns:

- Subject: the subject identifier
- Age_Month: the subject's age in months
- Stimuli: the item identifier
- Types: the presupposition type
- Correct: whether a correct response was given on this trial
- Group: whether this participant is a child with ASD or a typically developing child
- VMA: language ability, listed as verbal mental age in months, as scored from the HKCOLAS assessment (see article text)
- Raven: non-verbal intelligence, Raven standardized score
- Sex: sex of the participant

3. Analysis

3.1 Tools used in the Analysis
- RStudio 


3.2 Structure of the Analysis
   
- Visualization of the relationship between a child's age in months and her or his average correct response rate, broken down by children with and without an ASD diagnosis.
- The same as above, but also visualizing the difference between Existential and Factive presupposition types, omitting other presupposition types. 
- A visualization of the relationship among assigned sex, age, and correct response  rate, only for children without an ASD diagnosis.
- A visualization of the relationship between age and correct response rate, broken down by presupposition type including all types.

3.3 Key Findings




4. Installation/Usage
   
- Clone this repository:
  git clone https://github.com/lilalaser/R-Visualizations
- Open the R script in RStudio or another R environment.
- Load the Data:
        ◦ Run the script and use file.choose() to select the dataset .csv file when prompted.
        ◦ The script will load and display basic summaries of the dataset.
- Generate Visualizations:
        ◦ The script includes multiple sections, each generating a specific visualization:
            ▪ Section 1: Scatter plot of age vs. correct response rate, grouped by ASD status.
            ▪ Section 2: Scatter plot of age vs. response rate, separated by existential and factive presupposition types.
            ▪ Section 3: Scatter plot of age vs. response rate by assigned sex for typically developing children.
            ▪ Section 4: Scatter plot of age vs. response rate across all presupposition types.


5. Contact
For questions or contributions, please contact me through github. Thank you and enjoy ;)
