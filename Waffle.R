
install.packages(c("waffle", "extrafont"))

library(waffle)
library(extrafont)


#Primeros intentos
Ags <- c(5, 1, 1, 1, 2,1)
PA= c("PAN", "PRI", "PRD", "PT", "PVEM", "MORENA")
names(Ags) <-PA


Aguas<-waffle( Ags, title = "Aguascalientes", 
colors =c("blue","darkgreen", "yellow", "red", "chartreuse", "brown4")) 



Ags2 <- c(5,	1,	1,	1,	2,	1,	0,	0,	0)
PA2= c("PAN", "PRI", "PRD", "PT", "PVEM", "MORENA", "MC",	"Duranguense",	"PAN-PRD")
names(Ags2) <-PA2


waffle( Ags2, title = "Aguascalientes")
colors =c("blue","darkgreen", "yellow", "red", "chartreuse", "brown4", "orange", "violetred2","cornflowerblue"  )) 




Dgo <- c(2,14,1,1,1,3,17)
PD= c("PAN", "PRI", "PT", "MC", "Duranguense", "MORENA", "PAN-PRD")
names(Dgo) <-PD


Durango<-waffle( Dgo, title = "Durango", 
        colors =c("blue","darkgreen", "red", "sienna1", "violetred2", "brown4","cornflowerblue")) 


BC= 5
PB=c("Morena")
names(BC) <-PB

Baja<-waffle( BC, title = "Baja California", colors ="brown4") 

Pue<-c(4,1)
PP<-c("PRI", "Morena")
names(Pue) <-PP

Puebla<-waffle( Pue, title = "Puebla", 
             colors =c("darkgreen", "brown4")) 


par(mfrow=c(1,4) ) # 1 row and 2 columns for plots
Aguas
Durango
Baja
Puebla
mtext(text="Presidencias Municipales\n Elecciones en México 2019",  cex = 1.5, outer = TRUE)
mtext(side=3, text="sabaconsultores.com ", line = -30, outer = TRUE, font=2)





#Asi
waffle::waffle(Ags) 
# O de esta manera
waffle(Ags, title = "Aguascalientes")
 
       

#Cargando todos los resultados
alcaldias<-read.csv("alcaldias.csv", header = TRUE)     ## read csv file
rownames(alcaldias) <- alcaldias[, 1]                   ## set rownames
alcaldias <- alcaldias[, -1]                           ## remove the first variable

waffle( alcaldias[1,], title = "Aguascalientes")
colors =c("blue","darkgreen", "yellow", "red", "chartreuse", "brown4", "orange", "violetred2","cornflowerblue"  )) 






#install.packages("ggthemes")
#library(ggthemes)

 # +ggthemes::scale_fill_tableau(name=NULL)




vals <- c(239, 52, 9)
val_names <- sprintf("%s (%s)", c("Negative", "Positive", "Neutral"), scales::percent(round(vals/sum(vals), 2)))
names(vals) <- val_names

waffle::waffle(vals) +
  ggthemes::scale_fill_tableau(name=NULL)