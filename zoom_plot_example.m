% Script showing the example usage of the zoom_plot function
% Author: Zauner Michael
% Date: 10/05/2021
% Tested with: Matlab 2019b,2020b,2021a

% clearvars

% create an empty figure
fig = figure(1);clf;

% create some sample data
x_data = 0:.01:10;
y_data = sin(x_data).^2 + tan(x_data);

% create a new axes object (you could also get the active axes object via 'gca')
ax = axes;
plot(ax,x_data,y_data);
grid on

% define Name-Value pairs for the zoom_plot function:
% Name-Value pairs for the axes:
options.axes.Names = {'Position','XLim'};
options.axes.Values = {[.5 .6 .3 .3],[1,2]};
% Name-Value pairs for the rectangle:
options.rectangle.Names = {};
options.rectangle.Values = {};
% Name-Value pairs for the arrows:
options.arrows.Names = {'HeadLength','HeadWidth'};
options.arrows.Values = {8,8};

% call the function with options:
[zoom_utils] = zoom_plot(ax,options);

% alterntively, call the function without options (standard Position of axes = [.5 .5 .3 .3]
% [zoom_utils] = zoom_plot(ax);

% The new axes object can be moved around via drag-and-drop. Make sure to not have any plot tools, like zoom/pan/... active.
% You can even zoom/pan in the new axes object. The rectangle will automatically be updated! Click once on the plot, to re-align the arrows.