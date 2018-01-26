#' Return anova table to a norm way
#' 
#' @description 
#' \code{anova.tab} Return anova table to a norm way
#' @param fm: the object of aov()
#' 
#' @examples 
#' library(vsnc)
#' data(MET)
#' mod <- aov(yield ~ Gen*Loc,data=MET)
#' summary(mod)
#' anova.tab(mod)

anova.tab <- function(fm){
  tab <- summary(fm)
  k <- length(tab[[1]]) -2
  temp <- c(sum(tab[[1]][,1]), sum(tab[[1]][,2]), rep(NA,k))
  tab[[1]]["Total",] <- temp
  tab
}
