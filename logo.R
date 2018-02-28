library(ggplot2)
library(tidyverse)

bands <- tibble(
  y_min = seq(0, 4.15, .83),
  y_max = seq(.83, 5, .83)
) %>%
  mutate(band = 1:n())

line <- tibble(x = c(
  rgamma(n = 2900000, shape = 2, scale = 1.1) + .25,
  rnorm(n  =  700000, mean = 3.75, sd = .6),
  rnorm(n  =   68000, mean = 4.4, sd = .16),
  rnorm(n  =  110000, mean = 5, sd = .25),
  rnorm(n  =  340000, mean = 6, sd = .5),
  rnorm(n  =  120000, mean = 6.7, sd = 1)
)) %>%
  mutate(bin = round(x, 2)) %>%
  count(bin) %>%
  mutate(n_scale = (n / max(n)) * 3.75)



ggplot() +
  geom_rect(data = bands, xmin = 0, xmax = 10, aes(ymin = y_min, ymax = y_max, fill = factor(band))) +
  geom_ribbon(data = line, aes(x = bin, ymin = 0, ymax = n_scale),fill = "#ffffff") +
  geom_line(data = line, aes(x = bin, y = n_scale), color = "black") +
  annotate(geom = "text",
           label = "L",
           x = 1, y = 1.7,
           family = "Ubuntu",
           hjust = 0, vjust = 0,
           size = 30,
           fontface = "bold") +
  annotate(geom = "text",
           label = "ocally",
           x = 1.75, y = 1.7,
           family = "Ubuntu",
           hjust = 0, vjust = 0,
           size = 20,
           fontface = "bold") +
  annotate(geom = "text",
           label = "O",
           x = 1.75, y = 0,
           family = "Ubuntu",
           hjust = 0, vjust = 0,
           size = 30,
           fontface = "bold") +
  annotate(geom = "text",
           label = "ptimistic",
           x = 2.75, y = 0,
           family = "Ubuntu",
           hjust = 0, vjust = 0,
           size = 20,
           fontface = "bold") +
  scale_fill_brewer(palette = "Blues") +
  scale_x_continuous(limits = c(0,10), breaks = NULL) +
  scale_y_continuous(limits = c(0,10), breaks = NULL) +
  labs(x = "", y = "") +
  theme_void() + theme(legend.position = "none")

ggsave()


ggplot() +
  geom_rect(data = bands, xmin = 0, xmax = 10, aes(ymin = y_min, ymax = y_max, fill = factor(band))) +
  geom_ribbon(data = line, aes(x = bin, ymin = 0, ymax = n_scale),fill = "#ffffff") +
  geom_line(data = line, aes(x = bin, y = n_scale), color = "black") +
  scale_fill_brewer(palette = "Blues") +
  scale_x_continuous(limits = c(0,10), breaks = NULL) +
  scale_y_continuous(limits = c(0,10), breaks = NULL) +
  labs(x = "", y = "") +
  theme_void() + theme(legend.position = "none")
