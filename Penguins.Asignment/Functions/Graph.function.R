
#I will put this inside a file called plotting.r inside the functions folder: 

# Load the necessary library
library(ggplot2)

# Define the function
scatter.plot.flippers <- function(penguins_clean) {
  ggplot(data = penguins_clean, aes(x = flipper_length_mm, y = body_mass_g)) +
    geom_point(aes(color = species, shape = species), alpha = 0.5, show.legend = TRUE) +
    xlab("Flipper length (mm)") +
    ylab("Body mass (g)") +
    geom_smooth(method = "lm", se = TRUE) +
    theme_minimal() +
    ggtitle("Increasing body mass with flipper length") +
    theme(
      text = element_text(size = 12),
      plot.title = element_text(size = 14, face = "bold"),
      axis.title.x = element_text(size = 12),
      axis.title.y = element_text(size = 12),
      panel.grid.major = element_blank(),
      panel.background = element_blank(),
      axis.line = element_line(color = "black")
    ) +
    labs(color = "Species", shape = "Species") +
    expand_limits(y = 0)  # Add this line to prevent truncation of the y-axis
}



