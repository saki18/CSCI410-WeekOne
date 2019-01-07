# CSCI410-WeekOne
WeekOne 


CSCI 410 Pattern Recognition
Assignment One
by Denton Bobeldyk


Part I Single Feature
	Create a matlab script that will perform each of the steps required for this exercise.
	Load ‘partOneData.mat’ into the matlab environment (included in blackboard as part of the assignment).
	Create a histogram for each of the class distributions {classOne, classTwo}. Plot each of the histograms on the same figure (use 100 bins). The x and y axis should be labeled appropriately. There should be a title for the figure as well as a legend.
	Report the prior probability for classOne?  (Hint: Number of classOne samples divided by all samples)
	Report the prior probability for classTwo? (Hint: see above hint, but for classTwo)
	Create 5 random partitions of the data, splitting each of the classes into 60% training and 40% testing.
	Using only the training data, find the maximum likelihood estimator for the following parameters:
	Class One: μ,σ
	Class Two: μ,σ
	Classify each of the test samples using a Bayesian classifier (you must create a function that will do this).
	Report the mean and standard deviation for the prediction accuracy from step 6.


Hint: You will need to create a method that, given the mean and standard deviation of a distribution, determines the probability of a value ‘x’ belonging to that distribution.
Matlab template below:
function probability = computeGaussianDensity(mean, stdDev, x)
≪Your code here≫

end





Part II Multivariate
	Create a matlab script that will perform each of the steps required for this exercise.
	Load ‘partTwoData.mat’ into the matlab environment (included in blackboard as part of the assignment).
	Report the prior probability for classOne?
	Report the prior probability for classTwo?
	Create 5 random partitions of the data, splitting each of the classes into 60% training and 40% testing.
	Repeat the following process for each of the 5 random partitions:
	Using only the training data, find the maximum likelihood estimator for the following parameters:
	Class One: μ,covariance matrix
	Class Two: μ,covariance matrix
	Classify each of the test samples using a Bayesian classifier (you must create a function that will do this).
	Report the mean and standard deviation for the prediction accuracy from step 5.


Hint: You will need to create a method that, given the mean and covariance matrix, determines the probability of a value ‘x’ belonging to the distribution.

Matlab template below:
function probability = computeGaussianDensityMultivariate(mean, covarianceMatrix, x)
≪Your code here≫

end




Week One Assignment Helpful Hint!
Posted on: Thursday, January 3, 2019 11:02:27 AM EST

Week One Assignment Hint

You may find the following completed function useful for the week one assignment:
% m is the mean, S is the variance or covariance matrix, x is the feature
% vector or singular value (taken from the Pattern Recognition for
% consistency)
function z=computeGaussianDensity(m,S,x)
 
[l,q] = size(m);  %l dimensionality
z = (1/((2*pi)^l/2*det(S)^0.5)) * exp(-0.5 * (x-m)' * inv(S) * (x-m));

end
