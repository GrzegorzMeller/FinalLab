# FinalLab

# How to reduce overfitting in linear regression

1.	Overfitting occurs when a model mistakenly fits noise along with the signal. In the context of linear regression models, check out AIC, Akaike Information Criterion, which is very easy to apply as a test.
2.	Choose simpler model

# how to do variable selection 

Take sample from population that will  be representative and good. Sample should be unbiased. For example by stratified random sampling (dividing population int groups having similar data and taking the same amount of data from each group creating own samples). 
By using forward (adds variables as long as it improves the model) or backward (starts with everything and subtracts as long as it does not worsen the model) or both (both, ye) or all-subset regression (every combination, may take a lot of time, you determine how many of the best models you want to get nbest=x). 

# how to deal with multicollinearity 

1.	Remove highly correlated predictors from the model.  If you have two or more factors with a high VIF, remove one from the model. Because they supply redundant information, removing one of the correlated factors usually doesn't drastically reduce the R-squared.  Consider using stepwise regression, best subsets regression, or specialized knowledge of the data set to remove these variables
# how to deal with missing data 
Deleting missing data and replace them with average- pretty obvious. Minusy takie, że może to wypaczyć nasze wyniki, szczególnie jak jest sporo tych brakujących danych.
Another idea can be avoiding observations where data is missing.
If you miss data in one variable, delete this data also from related variable. 

# Outliers

Outlier has a big residual, is not predicted well (is an observation point that is distant from other observations). Also, there exists something called high leverage value – outlier in a predictor space. Eliminate values that are out of -2 +2 range of standard deviation. Delete everything that is out of  Lower Inner Fence -> Upper Inner Fence area. Grubbs test.

# WHAT IS AN R2 STATISTIC?

R2 is a statistic that will give some information about the goodness of fit of a model. In regression, the R2 coefficient of determination is a statistical measure of how well the regression predictions approximate the real data points. An R2 of 1 indicates that the regression predictions perfectly fit the data.

# WHAT IS A RANDOM WALK? IS IT STATIONARY OR NON-STATIONARY?

After Nth step the most probably you will be in area between -sqrt(N) +sqrt(N).

A random walk is the process by which randomly-moving objects wander away from where they started. It's like steps, 3 forward, one backward (in 2 dimensions). In a stationary time series, the statistical properties of the series don’t change over time - the mean and variance of Yt are constant. So random walk is generally too crazy to be stationary. 


# IF I HAVE DATA FROM 1912-2012, WHAT’S THE DANGER IF I BUILD A MODEL FORECASTING VALUES IN 2012 USING ALL OF THE HISTORICAL DATA?

It assumes that past trends will continue indefinitely and that extrapolating data based on historic information will give valid conclusions. 
In reality, the sales of products may be influenced by the actions of competitors, particularly in relation to new products becoming available on the market

# WHY SHOULD I CARE ABOUT RESIDUALS IN A REGRESSION?

We need as small residuals as we can, for getting a better model. We have to minimize residual error
	
When the residuals are not normally distributed, then the hypothesis that they are a random dataset, takes the value NO.
This means that in that case your (regression) model does not explain all trends in the dataset. I guess, you don´t want unknown trends to remain in your dataset. I would feel uncomfortable with that, because this would mean that your model is not fully explaining the behavior of your system.
Only solution is to find a model that fully explains the behavior of your system.  That means that you have to find a model, that shows residuals which are,... yes indeed, normally distributed.	

# Multicollinearity

In regression, "multicollinearity" refers to predictors that are correlated with other predictors.  Multicollinearity occurs when your model includes multiple factors that are correlated not just to your response variable, but also to each other. In other words, it results when you have factors that are a bit redundant.

# ols assumptions
in notebook

# univariate analysis – regression

"Multivariate" and "univariate", when they're used to describe models, refer to the number of dependent variables, not the number of independent variables. A multivariate linear regression model, for example, predicts several different variables, and the residuals are multivariate normal rather than univariate normal.


# kategoryzacja zmiennych w regresji - dlaczego, wady, po co

Categorical variables are often coded with dummy variables—0 or 1.

# jakie transformacje zmiennych sie wykonuje dla regresji i po co, dlaczego

We do this to obtain a better model, the more complicated function, the weirder points it will reach, but we have to be careful, not to cause overfitting. - log, square, trig. Because we really want to create as perfect model as we can sometimes when we don’t have a normal distribution we need to make a logarithm of our dependent variable.






