# Create a data frame with single-entered kinship pairs, using clean names from
# the janitor package and tibble because Jonathan likes how they print nicely in
# the console.
singleEntered <- CreatePairLinksSingleEntered(outcomeDataset = df_spsp_gen1,
                                    linksPairDataset =dsLinking[dsLinking$RelationshipPath=="Gen1Housemates" & dsLinking$RFull==.5,],
                                    outcomeNames = outcomeNames) %>%
  janitor::clean_names() %>%
  tibble::as_tibble()

# create a variable with the column names for the specific model you are running
# these will be the outcome string and the predictors character vector for the
# discord_regression function
modelColumns <- c("delin_mean", "cesd_20_1992")

# Return an abridged output of the discord regression model
abridge <- singleEntered %>%
  # drop NAs only from the columns that we will be using
  # in the specific model
  tidyr::drop_na(contains(modelColumns)) %>%
  # perform the discord regression
  discord::discord_regression(outcome = "delin_mean",
                              predictors = "cesd_20_1992")



# If we wanted to save the actual model object, we could do the following:
notBridge <- singleEntered %>%
  # drop NAs only from the columns that we will be using
  # in the specific model
  tidyr::drop_na(contains(modelColumns)) %>%
  # perform the discord regression,
  # setting abridged_output = FALSE to return the "lm" model object
  discord::discord_regression(outcome = "delin_mean",
                              predictors = "cesd_20_1992",
                              abridged_output = FALSE)


# We could then use the broom package or base R's summary to get different info
# about the model. By default, broom::tidy is used in the abridged output of
# discord_regression (that is, when abridged_output = TRUE as it is by default)

# Base R
summary(notBridge)

# sweeping
broom::tidy(notBridge) # should be same as abridge

broom::glance(notBridge) # model fit such as r.squared and AIC

broom::augment(notBridge) # fitted data with residuals and such
