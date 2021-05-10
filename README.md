# matlab_zoom_plot
Create zooms in Matlab figures.

# Example:
![alt text](https://github.com/Zaunmich/matlab_zoom_plot/blob/main/example.png "Example Plot")

# Usage:
* Download the file and have 'zoom_plot.m' on the matlab path.
* Use `[zoom_utils] = zoom_plot(ax)` to create a set of axes inside the parent axes `ax`.
* Optional settings can be given passed through via `zoom_plot(ax,options)`. See the [example code](https://github.com/Zaunmich/matlab_zoom_plot/blob/main/zoom_plot_example.m).
* The new axes object can be moved around via drag-and-drop. Make sure to not have any plot tools, like zoom/pan/... active.
* You can even zoom/pan in the new axes object. The rectangle will automatically be updated! Click once on the plot, to re-align the arrows.

You can use the zoom_plot function on the new axes to create multiple levels of zoom
