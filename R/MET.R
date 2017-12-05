#' Multi-environment trial of corn laid out in incomplete-blocks
#' Multi-environment trial of corn laid out in incomplete-blocks
#' 
#' The Design and Analysis of Factorial Experiments, 
#' page 74; John, P.W.M. (1971) Statistical 
#' Design and Analysis of Experiments, page 99.
#' @format 
#' \describe{A data frame with 1152 observations on the following 7 variables.
#' \item{Loc}{Location}
#' \item{Rep}{Replation that contains a coup of blocks}
#' \item{Block}{Block}
#' \item{Geno}{Cultivar}
#' \item{Row}{Row in field map}
#' \item{Col}{Column in field map}
#' \item{yield}{yield}
#' }
#' 
#' @details 
#' Multi-environment trial of 64 corn hybrids in six counties in North Carolina. Each location had 3 replicates in in incomplete-block design.
#' Note: In the original data, each county had 6 missing plots. This data has rows for each missing plot that uses the same county/block/rep to fill-out the row, sets the genotype to G01, and sets the yield to missing. These missing values were added to the data so that asreml could more easily do AR1xAR1 analysis using rectangular fields.
#'   
#' @source 
#'Julian Besag and D Higdon, 1999. Bayesian Analysis of Agricultural Field Experiments, Journal of the Royal Statistical Society: Series B (Statistical Methodology).
#' 
"MET"