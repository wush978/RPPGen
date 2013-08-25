\name{gen_hawkes_process}
\alias{gen_hawkes_process}
\title{Generate Hawkes Process}
\usage{
  gen_hawkes_process(lambda, T_0, lambda_u = NULL,
    phi = dexp, phi_u = NULL)
}
\arguments{
  \item{lambda}{a positive function.}

  \item{T_0}{positive numeric value. The generated events
  in \code{[0, T_0]}}

  \item{lambda_u,}{numeric value. The upper bound of
  \code{lambda(t)} in \code{[0, T_0]}. If \code{lambda_u}
  is \code{NULL}, then \code{\link{optimize}} will be used
  to find the upper bound.}

  \item{phi}{a positive function, which is the self-excited
  intensity effect.}
}
\description{
  The intensity of generated process is \deqn{\lambda(t) +
  \sum_{t_i < t} phi(t - t_i)}.
}

