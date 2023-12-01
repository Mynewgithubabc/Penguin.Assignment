#Making a function for my png files: 

save_scatter_plot_png <- function(penguins_clean,
                                  filename, size, res, scaling){
  agg_png(filename, width = size,
                    height = size,
                    units = "px",
                    res = res,
                    scaling = scaling)
  penguin.scatterplot <- scatter.plot.flippers(penguins_clean)
  print(penguin.scatterplot)
  dev.off()
}




#Making a function for saving my svg files:

save_flipper_plot_svg <- function(penguins_clean, 
                                  filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width   = size_inches, 
          height  = size_inches, 
          scaling = scaling)
  penguin.scatterplot <- scatter.plot.flippers(penguins_clean)
  print(penguin.scatterplot)
  dev.off()
}
