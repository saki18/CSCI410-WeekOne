close all;
commandwindow;

S = load('partOneData.mat');

% Display contents of matdata in command window
fieldnames(matData)
myData = matData.partOneData;
[counts,binCentres] = hist(myData, 100);


% m is the mean, S is the variance or covariance matrix, x is the feature
% vector or singular value (taken from the Pattern Recognition for consistency)
function z=computeGaussianDensity(m,S,x)
 
[l,q] = size(m);  %l dimensionality
z = (1/((2*pi)^l/2*det(S)^0.5)) * exp(-0.5 * (x-m)' * inv(S) * (x-m));

end