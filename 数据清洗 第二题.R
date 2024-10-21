head(iris)
is.na(iris)
duplicated(iris)
unique(iris)
iris[order(iris$Sepal.Width), ]
iris[iris$Species == 'setosa', ]