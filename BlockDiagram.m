clc; clear; close all;

% Define block diagram components
blocks = {'Input Signal (1011)', 'Modulator', 's(t)', 'Filter h(t)', 'Output v(t)'}; 
edges = [1 2; 2 3; 3 4; 4 5]; % Define signal flow

% Create and plot the block diagram
G = digraph(edges(:,1), edges(:,2), [], blocks);

figure;
h = plot(G, 'Layout', 'layered', 'EdgeLabel', {'Modulated', 's(t)', 'h(t)', 'Filtered Output v(t)'});
title('Block Diagram: Modulator and Filter System');
set(gca, 'XColor', 'none', 'YColor', 'none'); % Hide axis ticks

% Adjust node positions for better clarity
h.NodeFontSize = 12;
h.EdgeFontSize = 10;
h.MarkerSize = 7;
