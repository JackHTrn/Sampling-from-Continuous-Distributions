#' Single Variable Rejection Sampling
#'
#' This function implements single variable rejection sampling for r.v.s
#' with bounded support and which have bounded pdf. We expect
#'
#' The second paragraph will show up somewhere else and should be additional
#'
#' @param f the pdf that we are sampling from
#' @param N the number of attempted samples
#' @param lb lower bound of support of f
#' @param ub upper bound of support of f
#' @param maxf bound on f
#'
#' @return A vector containing samples fro pdf
#' @export
#'
#' @examples
#'
#' betaPDF <- function(x) {
#' ifelse(0<x & x<1, 2*x, 0)
#' }
#' oneDSample(pdf1,100,0,1,2)
#'
#'



oneDSample <- function(f,N,lb,ub,maxf) {
  ones <- runif(N,lb,ub)
  unis <- runif(N,0,maxf)
  ones[unis < f(ones)]
}

