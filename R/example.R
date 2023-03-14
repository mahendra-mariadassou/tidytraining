# # install.packages("readr")
# library(readr)
# library(dplyr)
# library(ggplot2)
#
# pres <- read_csv("inst/extdata/paris_presidentielles_2017_tour_1.csv")
# pres
#
# pres %>%
#   mutate(Taux_de_vote = Exprimés / Inscrits) %>%
#   group_by(`Libellé de la circonscription`) %>%
#   arrange(`Libellé de la circonscription`, desc(Taux_de_vote)) %>%
#   select(`Libellé de la circonscription`, `Code du b.vote`, Taux_de_vote) %>%
#   slice(1)
#
# quadratic_fit <- function(x) {
#   4.41481 + 0.34478 * x + 0.02399 * x^2
# }
#
# df <- tibble(temp      = rnorm(100, 15, 2),
#              ice_sales = temp + rnorm(100),
#              predicted = quadratic_fit(temp))
#
# ggplot(df, aes(x = temp, y = ice_sales)) +
#   geom_point() +
#   geom_abline(slope = 1.0634, intercept = -0.8776, col = "red") +
#   geom_line(aes(y = predicted), col = "blue")
#
# # ice_sales = a + b * temp + c * temp^2  + E
# # y = a + bx + cx^2 + E
# # y = f(x) + E
#
#
#
# ## Linear Model (LM)
# lm(ice_sales ~ temp + I(temp^2), data = df)
#
#
#
#
