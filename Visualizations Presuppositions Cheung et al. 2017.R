Cantonese Children's Presupposition Comprehension Analysis and Visualizations

Load the required libraries
```{r}
library(dplyr)
library(ggplot2)
library(languageR)
```
Read and get summary of the .csv
```{r}
pro1 <- read.csv(file.choose(), header = TRUE)
names(pro1)
summary(pro1)
```
1. Visualization of the relationship between a child's age in months and her or his
average correct response rate, broken down by children with and
without an ASD diagnosis.

Calculate the mean of 'Correct' for each 'Subject'
```{r}
pro1 %>% 
  group_by(Subject)  %>%
  mutate(mean(Correct))-> mean.corr
head(mean.corr)
#Create the scatter plot
mean.corr %>% ggplot( aes(x = Age_Month, y = `mean(Correct)` , color = Group)) + geom_point() + geom_smooth()

```
This plot shows that typically developing children have a higher average response rate 
#which increases with age, whereas ASD subjects have generally a lower 
#average response rate which does not increase with age.

2. The same as 1, but also visualizing the difference between
Existential and Factive presupposition types, omitting other
presupposition types.
Filter dataset to include only Existential and Factive presupposition types and
group data by presupposition type and subject and calculate the mean of Correct
```{r}
pro1 %>% 
  filter(Types == "Existential" | Types == "Factive")  %>%
  group_by(Types, Subject)  %>%
  mutate(mean(Correct)) -> mean.corr.2
#create scatter plot
mean.corr.2 %>% ggplot(aes(x = Age_Month, y = `mean(Correct)` , color = Types, shape = Group)) + geom_point() + geom_smooth()
```
Generally speaking, both groups have higher average correct response rates for the existential type, the ASD's correct response rates
vary greatly whereas the response rates of typically developing children do not vary so much and increase
with age. 

3. A visualization of the relationship among assigned sex, age, and correct response 
rate, only for children without an ASD diagnosis.

Filter dataset to include only the value "Typically developing children"
and group dataset by "Sex" and "Age_Month"
create mean.corr.3 containing the mean of the Correct variable for each combination of Sex and Age_Month groups
```{r}
 pro1 %>% 
    filter(Group == "Typically developing children")  %>% 
    group_by(Sex, Age_Month)  %>%  
      mutate(mean.corr.3 = mean(Correct)) %>% 
#create the scatter plot
  ggplot(aes(x = Age_Month , y = mean.corr.3, color = Sex)) + geom_point()  + geom_smooth()
```
This plot shows that within the group of typically developing children male subjects 
initially have a steeper correct response rate and generally less fluctuation within the 
correct response rate compared to female subjects.

4. A visualization of the relationship between age and correct response rate, broken down
by presupposition type including all types.

Group dataset by "Age_Month" and "Types"and 
calculate mean of Correct for each combination of "Age_Month" and "Types"
```{r}
pro1 %>%
     group_by(Age_Month, Types)%>%
     summarise(mean_corr = mean(Correct)) -> mean.corr4
#create scatter plot   
  mean.corr4 %>% ggplot(aes(x = Age_Month, y=mean_corr, color= Types))+ geom_point()+ geom_smooth()
```
This plot shows that stimuli of the existential type have the highest correct response rate, followed by those of the
factive, lexical and structural type. For all types, the correct response rate increases until 
 the age of 140 month and then decreases again. 
