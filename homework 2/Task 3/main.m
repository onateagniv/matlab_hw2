% Author Name: [Gaetano Vingelli]
% Email: [vingel78@rowan.edu]
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 3
% Task: [Weather Data Analysis]
% Date: [10/11/2024]

data = readcell('weather_data.txt','Delimiter', ',');

temperature = cell2mat(data(2:end,2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

avg_temp = mean(temperature);
avg_humidity = mean(humidity);
total_precip = sum(precipitation);

fileID = fopen('weather_summary.txt', 'w');
fprintf(fileID, 'Weather Summary\n');
fprintf(fileID, 'Average Temperature: %.2f Degrees Celsius\n', avg_temp);
fprintf(fileID, 'Average Humidity: %.2f%%\n', avg_humidity);
fprintf(fileID, 'Total Precipitation: %.2fmm\n', total_precip);
fclose(fileID);