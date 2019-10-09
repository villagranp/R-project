#EDA scatter plot (diagramas de dispersion) 
plot (mtcars$mpg ~ mtcars$cyl,
      xlab="Cilindros", 
      ylab = "Millas por Galon",
      main="Relación de  cilindros y MPG")


plot (mtcars$mpg ~ mtcars$hp,
      xlab="Caballos de Fuerza", 
      ylab = "Millas por Galon",
      main="HP y MPG")

plot (orangeec$Unemployment ~ orangeec$Education.invest...GDP,
      xlab="Inversion de educacion", 
      ylab = "Desempleo",
      main="Relación de  Desempleo y la Inversion de educacion")


plot (orangeec$GDP.PC ~ orangeec$Creat.Ind...GDP,
      xlab="Economia Naranja", 
      ylab = "PIB",
      main="Relación de  Economia Naranja y PIB")

#EDA histogramas estos utilizan la libreria ggplot2
qplot (mtcars$hp,
       geom="histogram",
       xlab="Caballos de fuerza", 
       main="Carros segun caballos de fureza")
#equivalente utilizando ggplot2 pero puede cutomizarse
ggplot(mtcars,
       aes(x = hp)) +
       geom_histogram()+
       labs(x="caballos de fuerza", y="cantidad de carros",
            title = "caballos de fuerza en carros") +
       theme(legend.position = "none") +
        theme(panel.background = element_blank(),
              panel.grid.major = element_blank(),
              panel.grid.minor = element_blank())


ggplot(mtcars, 
       aes(x = hp)) +
  geom_histogram(binwidth = 30)+
  labs(x="caballos de fuerza", y="cantidad de carros",
       title = "caballos de fuerza en carros") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot()+
  geom_histogram(data = mtcars,
                        aes(x=hp),
                        fill="blue",
                        color="red",
                        binwidth = 20)+
  labs(x="caballos de fuerza", y="cantidad de carros",
       title = "caballos de fuerza en carros") +
  xlim(c(80,280))+
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot()+
  geom_histogram(data = orangeec,
                 aes(x=GDP.PC),
                 fill="blue",
                 color="red",
                 binwidth = 2000)+
  labs(x="PIB per Capita", y="cantidad de Paises",
       title = "PIB per Capita LATAM") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

orangeec$Internet.penetration...population

ggplot()+
  geom_histogram(data = orangeec,
                 aes(x=Creat.Ind...GDP),
                 fill="blue",
                 color="red",
                 binwidth = 1)+
  labs(x="Economia naranja al PIB", y="cantidad de Paises",
       title = "contribucion Economia naranja al PIB LATAM") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot()+
  geom_histogram(data = orangeec,
                 aes(x=Internet.penetration...population),
                 fill="blue",
                 color="red",
                 binwidth = 5)+
  labs(x="Penetracion de internet", y="cantidad de Paises",
       title = "penetracion de internet LATAM") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
