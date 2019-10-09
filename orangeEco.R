#muestra la info del dataset
str(mtcars)
#muestra el tipo de dato de la columna vs del dataset
class(mtcars$vs)
#transforma la el valor a logico (1=true y 0=false)
mtcars$vs = as.logical(mtcars$vs)  
mtcars$am = as.logical(mtcars$am)
#---------------------------------------------------------------
#analizamos la estructura de orangeec
#---------------------------------------------------------------
str(orangeec)
summary(orangeec)

wt <- (mtcars$wt*1000)/2
wt

mtcars.new <- transform(mtcars,wt=(wt*1000)/2)
mtcars

summary(mtcars.new)
#---------------------------------------------------------------
#vectores

# numerico
tiempo_platzi <- c(25,5,10,15,10)
tiempo_lectura <- c(30,10,5,10,15)
tiempo_aprendi <- tiempo_platzi + tiempo_lectura
tiempo_aprendi

dias_aprendi <- c("Lunes","Martes","Miercoles","Jueves","Viernes")
dias_v_mins <- c(TRUE,FALSE,FALSE,TRUE,TRUE)

total_tiempo <- sum(tiempo_platzi)
total_tiempo_l <- sum(tiempo_lectura)
total_tiempo_a <- total_tiempo + total_tiempo_l

#---------------------------------------------------------------
#Matrices
tiempo_matrix <- matrix(c(tiempo_platzi,tiempo_lectura),nrow = 2, byrow = TRUE)
dias <- c("Lunes","Martes","Miercoles","Jueves","Viernes")
tiempo <- c("T Platzi", "T Lectura")

colnames(tiempo_matrix) <- dias
rownames(tiempo_matrix) <- tiempo
tiempo_matrix

colSums(tiempo_matrix)

final_matrix <- rbind(tiempo_matrix,c(10,15,30,5,0))
final_matrix

colSums(final_matrix)
#reto agregar una columna a la matrix!
final_matrix <- cbind(final_matrix, c(10,10,10))
final_matrix

colnames(final_matrix) <- c("Lunes","Martes","Miercoles","Jueves","Viernes","Sabado")
rownames(final_matrix) <- c("T Platzi", "T Lectura", "Podcast")

#---------------------------------------------------------------------
#operadores logicos

mtcars[mtcars$cyl<6,]
mtcars[mtcars$cyl>6,]

orangeec[orangeec$GDP.PC >= 15000,]
orangeec[orangeec$Creat.Ind...GDP <= 2,]

neworangeec <- subset(orangeec, Internet.penetration...population > 80 
                      & Education.invest...GDP >= 4.5 )
neworangeec


neworangeec <- subset(orangeec, Internet.penetration...population > 80 
                      & Education.invest...GDP >= 4.5,
                      select = Creat.Ind...GDP)

#se utiliza la libreria plyr para realizar el renombrado de una columna
rename(orangeec, c("Creat.Ind...GDP" = "AporteEcNja"))


#Factores

Nivel_curso <- c("Basico","Medio","Avanzado")
Nivel_curso

head(mtcars)
head(orangeec)

tail(mtcars)
tail(orangeec)

#install.packages("dplyr")
#library("dplyr")

glimpse(orangeec)

#Lista
my_vector <- 1:8
my_matrix <- matrix(1:9, ncol=3)
my_df <- mtcars[1:4,]


my_vector
my_matrix
my_df

my_list <- list(my_vector, my_matrix, my_df)
my_list






# graficar con candela (NOT YET)
w <- candela('ScatterPlot', data=mtcars, x='mpg', y='wt', color='disp')
w
