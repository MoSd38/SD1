getwd()
setwd(dir = "L:/BUT/SD/Promo 2025/mmounkailadjibo/Semestre 2/R/TD2/Dataset" )
getwd()
cars = read.csv(file = "bodies_karts.csv", header = TRUE, sep = ";", dec = ",")
pneu = read.csv(file = "tires.csv", header = TRUE, sep = "\t", dec = ",")
glider = read.csv(file = "gliders.csv", header = TRUE, sep = "|", dec = ".")
driver = read.csv(file = "drivers.csv", header = TRUE, sep = ";", dec = ",")
dim(cars)
dim(pneu)
dim(glider)
dim(driver)
summary(cars)
summary(pneu)
summary(glider)
summary(driver)
plot(driver$Weight , driver$Acceleration ,xlab ="Poids du pilote", ylab = "Acceleration du pilote", main = "Drivers Weights/acceleration")
cor(x = driver$Weight,
    y = driver$Acceleration)
cova = cov(x = driver$Weight,
            y = driver$Acceleration)
ecartx = sd(driver$Weight)
ecarty = sd(driver$Acceleration)
print(cova / (ecartx*ecarty))
matrice = cor(driver[ , - 1])
View(matrice)
install.packages("corrplot")
library(corrplot)
corrplot(matrice, method="square")
"Exercice 3 "
rang = order(driver$Acceleration, driver$Weight, decreasing = c(TRUE,FALSE))
resultat = driver[ rang  , c("Driver", "Acceleration","Weight") ]
View(resultat)
help(subset)
help(plot)
TopDriver = subset(x = driver,
                   subset = Acceleration == max(Acceleration), 
                   select = c("Driver","Acceleration"))
print(TopDriver)

