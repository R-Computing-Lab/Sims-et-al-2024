# age

df_age <- readr::read_csv('data/default/default.csv',show_col_types = FALSE)

names(df_age) <- c('R0000100',
                   'R0000300',
                   'R0000500',
                   'R0000600',
                   'R0173600',
                   'R0214700',
                   'R0214800')


# Handle missing values

df_age[df_age == -1] = NA  # Refused
df_age[df_age == -2] = NA  # Dont know
df_age[df_age == -3] = NA  # Invalid missing
df_age[df_age == -4] = NA  # Valid missing
df_age[df_age == -5] = NA  # Non-interview


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$R0173600 <- factor(data$R0173600,
                          levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0),
                          labels=c("CROSS MALE WHITE",
                                   "CROSS MALE WH. POOR",
                                   "CROSS MALE BLACK",
                                   "CROSS MALE HISPANIC",
                                   "CROSS FEMALE WHITE",
                                   "CROSS FEMALE WH POOR",
                                   "CROSS FEMALE BLACK",
                                   "CROSS FEMALE HISPANIC",
                                   "SUP MALE WH POOR",
                                   "SUP MALE BLACK",
                                   "SUP MALE HISPANIC",
                                   "SUP FEM WH POOR",
                                   "SUP FEMALE BLACK",
                                   "SUP FEMALE HISPANIC",
                                   "MIL MALE WHITE",
                                   "MIL MALE BLACK",
                                   "MIL MALE HISPANIC",
                                   "MIL FEMALE WHITE",
                                   "MIL FEMALE BLACK",
                                   "MIL FEMALE HISPANIC"))
  data$R0214700 <- factor(data$R0214700,
                          levels=c(1.0,2.0,3.0),
                          labels=c("HISPANIC",
                                   "BLACK",
                                   "NON-BLACK, NON-HISPANIC"))
  data$R0214800 <- factor(data$R0214800,
                          levels=c(1.0,2.0),
                          labels=c("MALE",
                                   "FEMALE"))
  return(data)
}
