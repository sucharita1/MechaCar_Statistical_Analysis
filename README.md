# MechaCar_Statistical_Analysis
A statistical study to compare vehicle performance of the MechaCar vehicles against other manufacturers as well as perform multiple linear regression analaysis , T-tests and collect summary statistics on various  parameters.

## Overview of MechaCar_Statistical_Analysis
Jeremyhas been selected as the primary Analyst for data analysis on onAutosRUs’ newest prototype, the MechaCar. It is suffering from production troubles that are blocking the manufacturing team’s progress. A statistical analysis needs to be performed on production data for insights that may help the manufacturing team as follows:
* Linear Regression to Predict MPG
* Summary Statistics on Suspension Coils
* T-Test on Suspension Coils
*  Design a Study Comparing the MechaCar to the Competition

## Resources
Data: MechaCar_mpg.csv, Suspension_Coil.csv
Software: R, R Studio 2021.09.2

The R script for the statistical analysis is [MechaCarChallenge]()

## Linear Regression to Predict MPG
* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The Pr(>|t|)  value tells us whether which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset. The lower the Pr(>|t|) value, lesser the chances of that variable causing a variance in mpg randomly. If we assume the industry standard 95% confidence level or .05 significance level . Then Pr(>|t|) value for vehicle_length is 2.60e-12 and ground_clearance is 5.21e-08 both are well below .05 so we can say that both vehicle_lenght and ground_clearance provided non-random amount of variance to mpg values.

![Coefficients](?raw=true)

* Is the slope of the linear model considered to be zero? Why or why not?
If there is a significant linear relationship between the any of the independent variables vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD and the mpg values of the dataset, the slope will not equal zero. In this case we can see that the p-value associated with the F-statistic is 5.35e-11 which is well below the 0.05 significance level and the F-statistic is 22.7.  The p- value along with f-statistic, clearly tells that the NULL hypothesis (all regression coefficeints are equal to zero or slope of the linear model is zero) can be rejected so the slope of linear model cannot be zero.

The final equation is:
mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)

![r_squared_and_f_statistic](?raw=true)

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
We know that our F-statistic and p-value of F-statistic are 22.7 and 5.35e-11. If we see the R-squared values now. R-squared evaluates the scatter of the data points around the fitted regression line. It is also called the coefficient of determination, or the coefficient of multiple determination for multiple regression. For the same data set, higher R-squared values represent smaller differences between the observed data and the fitted values.

Our adjusted R-squared value is 0.68 while R-squared value is .72. Since both are close by we can say that our model is not overfitted. So, considering the adjusted R-squared value can say that 68% of the variance in the mpg can be explained by the variables/coefficients. So we can say that the linear model predicts the mpg of MechaCar prototypes effectively.

![r_squared_and_f_statistic](?raw=true)

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

* The current manufacturing data meets this design specification for all manufacturing lots in total as the variance of the suspension coils for all three lots is 62.29356 PSI.

![total_summary](?raw=true)

* But the current manufacturing data does not meet this design specification for Lot3 as in evident from the data in lots_summary. We can also see the for Lot3 the variance is 170.286 PSI which is very high and should not be tolerated. 

There seems to be something wrong in Lot3 which derserved attention as the variance in Lot1 and Lot2 is .9796 and 7.4694 respectively.The variance for Lot1 and Lot2 is very less which is the only reason that total_summary meets the design specification in total_summary considering that number of samples is 50 each for each lot.

![lot_summary](?raw=true)

## T-Tests on Suspension Coils
We use t-test here to compare the means of all the lots, as well as to each lot individually to the population mean which is 1500 in this case. We use it to determine if the mean of each lot is different from the population mean. 

* A review of the results of the T-test for the suspension coils across all manufacturing lots shows that they are not statistically different from the population mean, and the p-value is 0.06028 which is greater than .05 so we fail to reject the null hypothesis.

![t_test_total](?raw=true)

* A review of the results of the T-test for the suspension coils against  manufacturing lot1 shows that they are not statistically different from the population mean, and the p-value is 1 which is greater than .05 so we fail to reject the null hypothesis.

![t_test_Lot1](?raw=true)

* A review of the results of the T-test for the suspension coils against  manufacturing lot2 shows that they are not statistically different from the population mean, and the p-value is 0.6072 which is greater than .05 so we fail to reject the null hypothesis.

![t_test_Lot2](?raw=true)

* A review of the results of the T-test for the suspension coils against  manufacturing lot3 that they are  statistically different from the population mean, and the p-value is 0.04168 which is less than .05 so we reject the null hypothesis tha they are not statistically different.

![t_test_Lot3](?raw=true)

## Study Design: MechaCar vs Competition
For the statistical study to see if MechaCar is not over or underpriced we need to the following metrics 

#### Metrics
Som of the most important metrics are :
* Price of the car which is the dependent variable.
* city or highway fuel efficiency as an independent variable which may affect the price. 
* horse power as an independent variable which may affect the price. 
* maintenance cost as an independent variable which may affect the price. 
* safety rating as an independent variable which may affect the price. 
* Resale value of the car as an independent variable which may affect the price. 

Null hypothesis: MechaCar is fairly priced based on the dependent variables for the same type of model

Alternative hypothesis: MechaCar is priced over or under priced based on the dependent variables for the same type of model

#### statistical test to be performed
* A multiple linear regression should be used to determine the factors that have the highest correlation with the price or which combination of variables have the greatest impact on price. 

#### dataset for the statistical test
* A random sample of cars for MechaCar and their competitor for the similar models, would need to be collected including the safety ratings, highway fuel efficiency, and horsepower, maintenance cost, safety rating, resale value etc.