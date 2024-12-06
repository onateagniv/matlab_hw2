% read data from text file
data = load('stock_data.txt');

% calculate average, highest, lowest, and price increase days
avg_price = mean(data);
highest_price = max(data);
lowest_price = min(data);           
price_increase_days = sum(diff(data) > 0); 
% print calculated values
fprintf('Average closing price: %.2f\n', avg_price);
fprintf('Highest closing price: %.2f\n', highest_price);
fprintf('Lowest closing price: %.2f\n', lowest_price);
fprintf('Number of days stock price increased: %d\n', price_increase_days);

% plot the stock data
figure;
plot(data, '-o', 'LineWidth', 1.5);  
hold on;

% add avg price as a horizontal line
yline(avg_price, '--', 'Average Price', 'LineWidth', 1.5, 'LabelHorizontalAlignment', 'left');
% add highest price as a horizontal line
yline(highest_price, '--g', 'Highest Price', 'LineWidth', 1.5, 'LabelHorizontalAlignment', 'left');
% add lowest price as a horizontal line
yline(lowest_price, '--r', 'Lowest Price', 'LineWidth', 1.5, 'LabelHorizontalAlignment', 'left');

% creates line plot
title('Stock Price Analysis');
xlabel('Day');
ylabel('Closing Price ($)');
legend('Daily Closing Prices', 'Avg Price', 'Highest Price', 'Lowest Price');
grid on;
hold off;

% save plot as 'stock_analysis.png'
saveas(gcf, 'stock_analysis.png');

% write a summary to 'stock_summary.txt'
fileID = fopen('stock_summary.txt', 'w');
fprintf(fileID, 'Stock Price Analysis Summary:\n');
fprintf(fileID, '-----------------------------\n');
fprintf(fileID, 'Avg closing price: %.2f\n', avg_price);
fprintf(fileID, 'Highest closing price: %.2f\n', highest_price);
fprintf(fileID, 'Lowest closing price: %.2f\n', lowest_price);
fprintf(fileID, 'Number of days stock price increased: %d\n', price_increase_days);
fclose(fileID);
