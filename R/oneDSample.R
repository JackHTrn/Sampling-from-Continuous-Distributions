oneDSample <- function(f,N,lb,ub,maxf) {
  ones <- runif(N,lb,ub)
  unis <- runif(N,0,maxf)
  ones[unis < f(ones)]
}

