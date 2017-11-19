\name{model.comp}
\alias{}
\title{Calculate the AIC and BIC}
\usage{
  m1 is the asreml object
  m2 is the asreml object
}
\description{
  This is the function that can calculate the AIC and BIC for asreml object
}
\examples{
data(oats,package = "asreml")
head(oats)
m1 <- asreml(yield ~ 1, random=~Nitrogen*Variety, data=oats)
m2 <- asreml(yield ~ 1, random=~Nitrogen*Variety+Blocks, data=oats)
m3 <- asreml(yield ~ 1, random=~Nitrogen*Variety+Blocks/Wplots, data=oats)
model.comp(m1)
model.comp(m3,m2)
}
