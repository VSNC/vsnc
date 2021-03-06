#' 不同材料制作的元件寿命数据
#' 
#' 不同材料制作的元件寿命数据
#' @format 
#' \describe{利用4种不同配方的材料A1，A2，A3，A4生产出来的元件，测得其使用寿命的数据。问：4种不同配方下元件的使用寿命有无显著性差异？
#' \item{A}{不同配方的材料}
#' \item{X}{使用寿命数据}
#' } 
#' @source 
#' 薛毅. 统计建模与R软件[M]. 清华大学出版社, 2007.
#' 
#' @examples 
#' library(vsnc)
#' data(lamp)
#' str(lamp)
#' mod <- aov(X ~ A, data=lamp)
#' 
#' # 方差分析表
#' anova.tab(mod)
#' 
#' # 不同水平的箱线图
#' library(ggplot2)
#' ggplot(lamp,aes(x = A, y=X,colour = A)) + geom_boxplot()
#' 
"lamp"