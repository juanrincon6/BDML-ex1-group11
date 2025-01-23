
# Calcular la moda de y_salary_m
mode_y_salary_m <- as.numeric(names(sort(table(db$y_salary_m), decreasing = TRUE)[1]))

# Imputar valores faltantes de y_salary_m con la moda
db <- db %>%
  mutate(y_salary_m = ifelse(is.na(y_salary_m), mode_y_salary_m, y_salary_m))

# Verificar que no haya valores faltantes
sum(is.na(db$y_salary_m))
