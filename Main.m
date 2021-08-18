%CFDO source code demo 1.0
% Author and Programmer Hardi M. Mohammed
%e-Mail: hardi.mohammed@charmouniversity.org
%       Homepage: https://sites.google.com/a/charmouniversity.org/hardi-mohammed/           
%                       http://www.nci-rc.com/about.php 
%   Main Paper:  Mohammed, H.M., Rashid, T.A.                               
%   Chaotic fitness-dependent optimizer for planning and engineering design. 
%   Soft Comput (2021). https://doi.org/10.1007/s00500-021-06135-z

%CFDO  is an improvement in FDO
%which includes different chaotic maps  to improve the performance of FDO , 
%the results shows that CFDO is better than FDO and other popular algorithms in 10  benchmark functions.

%% % CFDO modification source codes by % % Hardi M. Mohammed  % % % %
% % we improved the code of FDO which have been written by Jaza Abdulla % % then we embeded chaotic maps. % %%
% disclaimer CODE of  FDO are taken from 
% J. M. Abdullah and T. A. Rashid, "Fitness Dependent Optimizer: 
% Inspired by the Bee Swarming Reproductive Process," in IEEE Access.
% doi: 10.1109/ACCESS.2019.2907012
% keywords: {Optimization;Swarm Intelligence;Evolutionary Computation;Metaheuristic Algorithms;Fitness Dependent Optimizer;FDO},
% URL: http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8672851&isnumber=6514899               %
%_________________________________________________________________________%
%  

% 
% The initial parameter setting are:
%__________________________________________
% function_name : a function that you want to run it, 
% Max_iteration : maximum number of generations
% scout_bee_number : number of search agents
% weightFactor : equation 2 in the above paper.

% dimensions = number of your variables n
% lower_bound = is the lower bound of variable n
% upper_bound = is the upper bound of variable n

% To run FDO: [best_fitness_value, best_scout_bee] = FDO(function_name, max_iteration, scout_bee_number, weightFactor);
% best_fitness_value = will return the fitness value of the best_scout_bee after Max_iteration is reached.
% best_scout_bee = will return the global best solution after Max_iteration is reached.

clear all 
clc

scout_bee_number =30; % Number of search agents

function_name='cec10'; % Name of the test function that can be from F1 to F19 and cec01 t0 cec10 (Table 1,2 in the paper)

max_iteration = 10; 

weightFactor = 0.0;  % equation 2 in the above paper.

% disp(function_name);



[best_fitness_value, best_scout_bee] = CFDO(function_name, max_iteration, scout_bee_number, weightFactor);
 disp(num2str(best_fitness_value));
 
 

 