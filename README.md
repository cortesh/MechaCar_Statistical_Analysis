# MechaCar_Statistical_Analysis

## Deliverable 1: Linear Regression to Predict MPG

![lm](https://github.com/cortesh/MechaCar_Statistical_Analysis/blob/main/multilinear_regression.jpg)

* vehicle_length and ground_clearance provided the greatest non-random variance, followed by vehicle_weight.  The Intercept was also significant.
* The slope of the linear regression model is not considered to be zero.  We know this because the r-squared or the coefficient of determinate is closer to 1.
* The model can predict mpg of MechCar prototypes because the multiple R-squared is 0.71 and the adjusted R-squared is 0.68 while the p-value is 5.35e-11, which is far more significant that the benchmark 0.5 used as the limit of significance.  However, the high significance of the intercept may mean that the significant variables (vehicle_length and ground_clearance) may need to be scaled to improve the predicative power of the model.

## Deliverable 2: Summary Statistics on Suspension Coils

![total_summary](https://github.com/cortesh/MechaCar_Statistical_Analysis/blob/main/total_summary.jpg)


![lot_summary](https://github.com/cortesh/MechaCar_Statistical_Analysis/blob/main/lot_summary.jpg)

The conclusion of this study is that the design specifications for the MechaCar suspension coils has successfully stayed within the 100 pounds per square inch parameter. This is true for all lots as a whole and for lots 1 and 2.  Lot 3, however, has a variance of 170 and will need further study to determine the root cause(s) of these production delays.  At least, thanks to this study, the investigation can narrow its scope moving forward. 

## Deliverable 3: T-Tests on Suspension Coils

![one_sample_t-Test](https://github.com/cortesh/MechaCar_Statistical_Analysis/blob/main/one_sample_t-Test.jpg)

A look at the results of the t-Test for the entire sample dataset shows a p-value of .374 and therefore since the significance test is not met, the Null hypothesis cannot be ruled out.

![normal_distribution_population](https://github.com/cortesh/MechaCar_Statistical_Analysis/blob/main/normal_distribution_population.jpg)

A comparison of density charts for the population and the sample show that both datasets are normally distributed.

![normal_distribution_sample](https://github.com/cortesh/MechaCar_Statistical_Analysis/blob/main/normal_distribution_sample.jpg)

But the sample dataset is skewed to the left.

![one_sample_t-Test1](https://github.com/cortesh/MechaCar_Statistical_Analysis/blob/main/one_sample_t-Test_lot1.jpg)

When you perform the t-Tests by lot, however, the p-values fall very much within range of the significance level

![one_sample_t-Test2](https://github.com/cortesh/MechaCar_Statistical_Analysis/blob/main/one_sample_t-Test_lot2.jpg)

Allowing one to positively reject the Null hypothesis

![one_sample_t-Test3](https://github.com/cortesh/MechaCar_Statistical_Analysis/blob/main/one_sample_t-Test_lot3.jpg)



## Deliverable 4: Study Design: MechaCar vs Competition

* What metric or metrics are you going to test?
The first step in this process would be to determine which metrics we'd be interested in comparing. I would look at the following datapoints:
    * price
    * city or highway fuel efficiency 
    * horse power 
    * maintenance cost 
    * safety rating
    * manufactoring cost
    * sales history

* What is the null hypothesis or alternative hypothesis?

    MechaCar is in the top 3 of cars in its category based on variable most correlated to high sales.

* What statistical test would you use to test the hypothesis? And why?
I would conduct a correlation analysis amongts key indicators (price, fuel efficiency, safety rating, etc.) to find the most predictive variable of comparison.
then I would use ANOVA to compare across all groups in the study.  I would also run regression models using the predictive variable to plot scatterplot charts of the findings

* What data is needed to run the statistical test?
We would need datasets for each of the cars in the study with the above mentioned datapoints.
