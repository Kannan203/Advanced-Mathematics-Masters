%% Exercise: Principle Component Analysis
%
%  Instructions
%  ------------
%
%  This file contains code that helps you get started on the
%  exercise.
%  You have to use the functions pca, projectData, displayData, and recoverData
%  to solve the exercise.
%

%% Initialization
clear ; close all; clc


%% =============== Part 1: Loading and Visualizing Google house number Data =============
%  We start the exercise by first loading and visualizing the dataset.
%  The following code will load the dataset into your environment
%
fprintf('\nLoading number dataset.\n\n');

%  Load Face dataset
load ('graynumbers.mat')

%  Display the first 100 numbers in the dataset
displayData(X(1:100, :));

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =========== Part 2: PCA on Google house number Data: Eigennumbers  ===================
%  Run PCA and visualize the eigenvectors which are in this case eigennumbers
%  We display the first 100 eigennumbers.
%
fprintf(['\nRunning PCA on number dataset.\n' ...
         '(this mght take a minute or two ...)\n\n']);

%  Before running PCA, it is important to first normalize X by subtracting 
%  the mean value from each feature
[X_norm, mu, sigma] = featureNormalize(X);

% ====================== YOUR CODE HERE ======================
%  Run PCA
[U,S,l,Sigma]=pca(X);
if(Sigma==l)
    display('same')
else
    disp('loys')
end
U=U(:,1:100);
%l=pca(X);
%if U==l
%  disp('lotto');
%end
%  Visualize the top 100 eigenvectors found
displayData(U);

% =========================================================================

fprintf('Program paused. Press enter to continue.\n');
pause;


%% ============= Part 3: Dimension Reduction for Numbers =================
%  Project images to the eigen space using the top k eigenvectors 
%  If you are applying a machine learning algorithm 
fprintf('\nDimension reduction for number dataset.\n\n');

K = 100;
% ====================== YOUR CODE HERE ======================
% project the data to the size 5000 x 100 using the eigenvectors

for i=1:size(X,1)
  for j=1:K
    x=X(i,:);
    proj=x*U(:,j);
    Z(i,j)=proj;
  end
end
displayData(Z);
% =========================================================================

fprintf('The projected data Z has a size of: ')
fprintf('%d ', size(Z));

fprintf('\n\nProgram paused. Press enter to continue.\n');
pause;

%% ==== Part 4: Visualization of Numbers after PCA Dimension Reduction ====
%  Project images to the eigen space using the top K eigenvectors and 
%  visualize only using those K dimensions
%  Compare to the original input, which is also displayed

fprintf('\nVisualizing the projected (reduced dimension) numbers.\n\n');

K = 100;
% ====================== YOUR CODE HERE ======================
% recover the data
for i=1:size(X,1)
  for j=1:size(X,2)
    z=Z(i,:);
    pro=z*U(j,:)';
    R(i,j)=pro;
  end
end
displayData(R(1:100, :));

fprintf('The projected data R has a size of: ')
fprintf('%d ', size(R));

fprintf('\n\nProgram paused. Press enter to continue.\n');
pause;

% =========================================================================

% Display normalized data
subplot(1, 2, 1);
% ====================== YOUR CODE HERE ======================
displayData(X(1:100, :));

% =========================================================================
title('Original numbers');
axis square;

% Display reconstructed data from only k eigennumbers
subplot(1, 2, 2);
% ====================== YOUR CODE HERE ======================
displayData(R(1:100, :));

% =========================================================================
title('Recovered numbers');
axis square;

fprintf('Program paused. Press enter to continue.\n');
pause;

