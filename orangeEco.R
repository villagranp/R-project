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


