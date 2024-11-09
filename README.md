Cantonese Children's Presupposition Comprehension Analysis
Description
This R script provides data visualizations for a dataset from Cheung et al. (2017) (https://osf.io/u2wsz/) on Cantonese-speaking children's understanding of presuppositions triggered by various grammatical configurations. These configurations include factive presuppositions, existential presuppositions, and those arising from lexical and structural factors. In addition to that, the dataset includes variables such as age, sex, Autism Spectrum Disorder (ASD) diagnosis, and accuracy in presupposition comprehension tests. This script explores relationships between these variables and the children’s comprehension rates through several visualizations.

Structure
1. Visualization of the relationship between a child's age in months and her or his average correct response rate, broken down by children with and without an ASD diagnosis.

2. The same as 1, but also visualizing the difference between Existential and Factive presupposition types, omitting other presupposition types. 

3. A visualization of the relationship among assigned sex, age, and correct response  rate, only for children without an ASD diagnosis.

4. A visualization of the relationship between age and correct response rate, broken down by presupposition type including all types.

Installation
    1. Clone this repository:
       git clone https://github.com/lilalaser/R-for-Linguists
    2. Open the R script in RStudio or another R environment.
Usage
    1. Load the Data:
        ◦ Run the script and use file.choose() to select the dataset .csv file when prompted.
        ◦ The script will load and display basic summaries of the dataset.
    2. Generate Visualizations:
        ◦ The script includes multiple sections, each generating a specific visualization:
            ▪ Section 1: Scatter plot of age vs. correct response rate, grouped by ASD status.
            ▪ Section 2: Scatter plot of age vs. response rate, separated by existential and factive presupposition types.
            ▪ Section 3: Scatter plot of age vs. response rate by assigned sex for typically developing children.
            ▪ Section 4: Scatter plot of age vs. response rate across all presupposition types.
Contact
For questions or contributions, please contact me through github. Thank you and enjoy ;)
