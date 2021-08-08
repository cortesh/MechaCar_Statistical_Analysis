# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![lm](https://github.com/cortesh/MechaCar_Statistical_Analysis/blob/main/multilinear_regression.jpg)

* vehicle_length and ground_clearance provided the greatest non-random variance, followed by vehicle_weight.  The Intercept was also significant.
* The slope of the linear regression model is not considered to be zero.  We know this because the r-squared or the coefficient of determinate is closer to 1.
* The model can predict mpg of MechCar prototypes because the multiple R-squared is 0.71 and the adjusted R-squared is 0.68 while the p-value is 5.35e-11, which is far more significant that the benchmark 0.5 used as the limit of significance.  However, the high significance of the intercept may mean that the significant variables (vehicle_length and ground_clearance) may need to be scaled to improve the predicative power of the model.


## Study Design: MechaCar vs Competition

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
