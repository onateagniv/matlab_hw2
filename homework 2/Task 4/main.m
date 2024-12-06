% average distances of planets from the sun in AU
p_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.22, 30.05];

% relative planet sizes if earth=1
p_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88];

% planet names for labeling
p_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};

figure;

% scatter plot of planet distances vs. sizes
subplot(1,2,1);
scatter(p_distances, p_sizes, 100*p_sizes, 'filled');
title('Planet Sizes vs. Distances from the Sun');
xlabel('Distance from Sun (AU)');
ylabel('Relative Planet Size (Earth = 1)');
grid on;

% add legend with planet names
legend(p_names, 'Location', 'bestoutside');

% bar chart of planet distances
subplot(1,2,2);
bar(p_distances);
title('Planet Distances from the Sun');
xlabel('Planet');
ylabel('Distance from Sun (AU)');
set(gca, 'XTickLabel', p_names);
xtickangle(45);
grid on;

% save the figure as image file
saveas(gcf, 'solar_system_visualization.png');
