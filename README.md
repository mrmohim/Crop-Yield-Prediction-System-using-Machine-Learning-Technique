Crop Yield Prediction System using Machine Learning Technique
===========

![Alt text](https://github.com/mrmohim/Crop-Yield-Prediction-System-using-Machine-Learning-Technique/blob/master/Future%20System%20Design.png "Screenshot")

Abstract
-------
Bangladesh being an agricultural country, its economy predominantly depends on agricultural yield growth and allied agro industry products. In Bangladesh, agriculture is largely influenced by rainwater and temperature which is highly unpredictable. Growth of agriculture also depends on diverse soil parameters, crop rotation, soil moisture, surface temperature and also weather aspects which include temperature, rainfall, humidity etc. Bangladesh now is rapidly progressing towards technical development. Thus, technology will prove to be beneficial to agriculture which will increase crop productivity resulting in better yields to the farmer. The research suggests area based beneficial crop rank before the cultivation process. It indicates the crops that are cost effective for cultivation for a particular area of land. To achieve these results, we are considering six major crops which are Aus, Aman, Boro, Potato, Jute and Wheat. The prediction is based on analyzing a static set of data using Supervised Machine Learning techniques. This static dataset contains previous year’s data taken from the Yearbook of Agricultural Statistics and Bangladesh Agricultural Research Council of those crops according to the area. The research intents to do a comparative analysis on K-Nearest Neighbor’s and Multiple Linear Regression algorithms to obtain these predictions. The past ten years (2004- 2013) of Bangladesh have been considered making this dataset to ensure learning and training of the algorithm and increasing the accuracy rate of the prediction and for testing we used one year (2014) for computing accuracy.

Index Terms
-------
Supervised Machine Learning, Multiple Linear Regression, K-Nearest Neighbor Regression, Agriculture, Prediction, Learning Dataset, Test Dataset, Error Percentage and Prediction Accuracy.

Objective
-----------
The main objective of this project/thesis:
- To predict crop-yield which can be extremely useful to farmers in planning for harvest and sale of grain harvest.
- To implement a machine learning algorithm that gives better prediction of suitable crop for the corresponding region and crop season in our country.

Multiple Linear Regression
-------
In the given regression model graph, a best fit line is drawn to establish a relationship between the independent and dependent variables. The line is obtained from the following equation [18],

𝑦= 𝛽0+ 𝛽1∗𝑥

Where,

y = Dependent variable,

x = Independent variable,

β0 = Intercept,

β1 = Slope of the line.

Since, multiple linear regression has multiple independent variables, the equation to obtain the best fit line is following [13],   
                
                𝑦= 𝛽0+ 𝛽1∗𝑥1+𝛽2∗𝑥2+⋯+𝛽𝑛∗𝑥𝑛

Where, 

y = Dependent variable, xi = Independent variables, β0 = constant term, βi = coefficients relating y and xi. It is assumed that error term has a mean value of 0 

K-Nearest Neighbors Regression
-------
In k-Nearest Neighbors Regression algorithm, a similarity measure between cases in the learning data set and the test data set is done to identify the classification of the test cases. For instance, Euclidean distances of all cases can be measured and then the k nearest learned data instances votes to identify the class in which the test cases belongs [19]. It finds the adjacent possible values based on the number of K which is optimal.

Regression Model
-------
![Alt text](https://github.com/mrmohim/Crop-Yield-Prediction-System-using-Machine-Learning-Technique/blob/master/Regression%20Model%20Chart.png "Screenshot")

Note
-------
**IF YOU FIND ANY SEVERE BUGS PLEASE KINDLY [PULL REQUEST](https://github.com/mrmohim/Crop-Yield-Prediction-System-using-Machine-Learning-Technique/pulls).**
