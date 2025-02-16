library(ggplot2)
library(dplyr)

team <- c("Houston", "Quebec City", "Arizona", "Atlanta", "Toronto", "Austin", "Saskatoon", "San Diego")
val <- c(54, 47, 24, 17, 8, 4, 3, 3)
nhl_df <- data.frame(team, val) %>% 
  arrange(val)

nhl_df$team <- factor(nhl_df$team, levels = nhl_df$team)

plot <- ggplot(nhl_df, aes(x = team, y = val)) + 
  geom_col(fill = "white") + coord_flip() + 
  labs(
    title = "Where would you like to see a new NHL team play?",
    subtitle = "175 votes"
  ) +
  geom_text(aes(label = val), color = "white", hjust = -0.5) + 
  theme_minimal() +
  theme(
    plot.title = element_text(color = "white", face = "bold", size = 17, hjust = 0.5),
    plot.subtitle = element_text(color = "white", size = 15, hjust = 0.5),
    panel.background = element_rect(fill = "black"), 
    plot.background = element_rect(fill = "black"), 
    axis.text = element_text(color = "white"),         
    panel.grid.major = element_line(color = "black"),
    panel.grid.minor = element_line(color = "black"),
    legend.position = "none",
    axis.text.y = element_text(size = 10)
  )

plot
