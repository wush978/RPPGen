#'@title Generate Hawkes Process
#'
#'@param lambda a positive function.
#'@param T_0 positive numeric value. The generated events in \code{[0, T_0]}
#'@param lambda_u, numeric value. The upper bound of \code{lambda(t)} in \code{[0, T_0]}.
#'If \code{lambda_u} is \code{NULL}, then \code{\link{optimize}} will be used to find the upper bound.
#'@param phi a positive function, which is the self-excited intensity effect.
#'
#'@description The intensity of generated process is 
#'\deqn{\lambda(t) + \sum_{t_i < t} phi(t - t_i)}.
#'
#'@export
gen_hawkes_process <- function(lambda, T_0, lambda_u = NULL, phi = dexp, phi_u = NULL) {
	if (is.null(lambda_u)) lambda_u <- optimize(lambda, c(0, T_0), maximum = TRUE)$objective
	if (is.null(phi_u)) phi_u <- optimize(phi, c(0, T_0), maximum = TRUE)$objective
	retval <- list()
	retval.ele <- gen_inhomo_poisson(lambda, T_0, lambda_u)
	retval[[1]] <- retval.ele
	i <- 1
	while(length(retval.ele) > 0) {
		retval.ele <- c()
		for(j in retval[[i]]) {
			retval.ele <- append(retval.ele, gen_inhomo_poisson(phi, T_0 - j, phi_u) + j)
		}
		retval.ele <- sort(retval.ele)
		retval[[i <- i + 1]] <- retval.ele
	}
	retval <- unlist(retval)
	sort(retval)
}
