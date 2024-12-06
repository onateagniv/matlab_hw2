% Author Name: Gaetano Vingelli
% Email: vingel78@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Population Growth Analysis
% Date: [Submission Date]

%create population vector
population = [5000, 5200, 5350, 5600, 5800];
%set growth rate
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1);
%create vector for relationship between population and growth rate
pop_data = [population; [0 growth_rate]];
%print table
fprintf("Year | Population | Growth Rate\n")
%creates a table for each value of population variable with column labels
for i=1:length(population)
fprintf("%d | %d | %f \n", i, pop_data(1, i), pop_data(2, i))
end