library(data.table)

# need to run init.sh first

data_dir <- Sys.getenv("QDATA_LINEAR")

# args <- commandArgs(trailingOnly = TRUE)


# args

nb_points <- 100000

intercept <- 4
betas <- c(3, 14, 15, -9, -2, 6, 5)
nb_predictors <- length(betas)
noise_mu <- 0
noise_sigma <- 0.4
vars_mu <- rnorm(nb_predictors, mean = 1, sd = 10)
vars_sigma <- abs(rnorm(nb_predictors, mean = 1, sd = 10))


# generate data

data_linear <- data.table(
  noise = rnorm(nb_points, mean = noise_mu, sd = noise_sigma),
  Y = intercept
)

for (i in 1:nb_predictors) {

  data_linear[, X := rnorm(
    nb_points,
    mean = vars_mu[i],
    sd = vars_sigma[i]
  )]

  data_linear$Y <- data_linear$Y + betas[i] * data_linear$X

  colnames(data_linear)[colnames(data_linear) == "X"] <- paste0("X_", i)

}

data_linear$Y <- data_linear$Y + data_linear$noise

# save data

file_data <- file.path(data_dir, "linear_data_1.rds")
saveRDS(data_linear, file_data)
