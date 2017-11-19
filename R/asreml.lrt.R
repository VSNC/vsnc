asreml.lrt <- function (m1,m2) {
  fixed.labels <- lapply(list(m1, m2), 
                         function(x) {
                           attr(terms(x$fixed.formula), "term.labels")
                         })
  
  if (!all(diff(sapply(fixed.labels, function(x) length(x))) ==  0))     return("Fixed models must be the same")
  if (all(sapply(fixed.labels, function(x) length(x)) > 0)) {
    for (i in 2:length(fixed.labels)) {
      if (!all(is.element(fixed.labels[[1]], fixed.labels[[i]])))
        return("Fixed models must be the same")
    }
  }
  
  n1 <- length(attr(m1$random.formula,"str.group"))
  n2 <- length(attr(m2$random.formula,"str.group"))
  
  if(n1 > n2){
  summ.full <- summary(m1)
  summ.reduce <- summary(m2)
  REMLLRT <- 2 * (summ.full$loglik - summ.reduce$loglik)
  vc.full <- summ.full$varcomp
  vc.reduce <- summ.reduce$varcomp
  DF <- nrow(vc.full) - nrow(vc.reduce)
  P_value <- round(1 - pchisq(REMLLRT, DF),4)
  return(data.frame(REMLLRT, DF, P_value))
  }else{
    summ.full <- summary(m2)
    summ.reduce <- summary(m1)
    REMLLRT <- 2 * (summ.full$loglik - summ.reduce$loglik)
    vc.full <- summ.full$varcomp
    vc.reduce <- summ.reduce$varcomp
    DF <- nrow(vc.full) - nrow(vc.reduce)
    P_value <- round(1 - pchisq(REMLLRT, DF),4)
    return(data.frame(REMLLRT, DF, P_value))
  }
  
}
# asreml.lrt(m2,m3)
