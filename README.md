# Machine Learning
# Linear Regression 

Used Single variable Linear Regression, to estimate profits of food truck with respect to the population. 

Best fit for h= theta0 + theta1 * X

![alt text](img/linear_regressionPlot.png "Best fit linear regression")

Program choose theta0 and theta1 with minimum cost value using gradient descent. 

![alt text](img/3dplot.png "3d plot")

choose global min. using gradient descent. Countour plot visualizes this for us 

![alt text](img/countourPlot.png "countour plot")


# Logistic Regression 

Useful for classification problems. In this exercise, used logistic regression to predict students accpetance rate based on exam 1 and 2 scores (2 features). 

![alt text](img/non_req_linearregression.png "Best fit logistic linear regression")

Program can predict with 89% confidence score. As seen from the picture a line clearly seperates + and - values 

![alt text](img/nonlinear.png "non-linear regression")
This data is not linear, to add boundary need to scale feactures. Used 6 DOF and regularized them to not to overfit the data. 
Result looks this the picture below.

![alt text](img/boundary.png "non-linear regularized logistic regression")


# Learning curves
Used to identify the if the learning algorithm sufferes from hig bias (underfitting) or high variance (overfitting).

Linear regression is applied to the non-linear data. Below is the result 
![alt text](img/linearRegression.jpg "Best fit linear regression")

Learning curve is generated from training set and validation set cost functions 
 
![alt text](img/learningcurve.jpg "Learning curve")
From the graph above, errors increase as the number of training set increases . graphs. This indicates high bias problem. To fix introduce more features. Such as polynomial fit instead of linear. 

For polynomial regression and lambda=0 (no regulization)
![alt text](img/overfitting_data.jpg "lambda=0")

![alt text](img/overfittingLearningcurve.jpg "lambda=0")

From the graphs above, we can deduce that the learning algorithm overfits the data (high variance). By increasing or decreasing lambda fixes this problem. 

lambda={0; 0:001; 0:003; 0:01; 0:03; 0:1; 0:3; 1; 3; 10}, array of lamda values are used to graph and select the lambda that best fits the data. 

![alt text](img/selectlambda.jpg "lambda=3")

From the graph best lambda is 3





