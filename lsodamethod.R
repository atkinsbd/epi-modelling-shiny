
# Define a function containing the system of equations
x.model <- function(t, state, parameters) {
  x <- state[1]
  dx <- 2*exp(2*t)
  result <- c(dx)
  return(list(result))
}

# Define the initial conditions (initial state)
init <- c(x = 0)

# Define the parameters
pars <- list()

# Define the times at which we want the solution
times <- seq(from=0, to=5, by=0.5)

# Find the solution using lsoda()
out <- lsoda(func = x.model, y = init, parms = pars, times = times)

