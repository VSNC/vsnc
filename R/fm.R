#' Tree data
#' 
#' This is a tree data
#' @format 
#' \describe{The data have 5 factors and 6 variates
#' \item{TreeID}{TreeID}
#' \item{Spacing}{Spacing}
#' \item{Rep}{Rep}
#' \item{Fam}{Family}
#' \item{Plot}{The plot}
#' \item{dj}{The variate:dj}
#' \item{dm}{The variate:dm}
#' \item{wd}{The variate:wd}
#' \item{h1}{The variate:h1}
#' \item{h2}{The variate:h2}
#' \item{h3}{The variate:h3}
#' \item{h4}{The variate:h4}
#' \item{h5}{The variate:h5}
#' }

#' @source 
#' 林元震, 陈晓阳. R与ASReml-R统计分析教程[M]. 中国林业出版社, 2014.
#' @examples 
#' data(fm,package="vsnc")
#' head(fm)
#' moda <- aov(dj ~ Spacing + Rep + Fam,data=fm)
#' summary(moda)
#' 
"fm"