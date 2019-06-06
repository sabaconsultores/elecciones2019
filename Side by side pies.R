#participacion

# Create test data.

BC<- c(29.6760, 100-29.6760)
Pue<-c(33.0840, 100-33.0840)
labels= c("votó", "no votó")

#Agregar porcentaje a las etiquetas
pct<- round(BC/sum(BC)*100)
lbls <- paste(labels, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels

pct<- round(Pue/sum(Pue)*100)
lbls2 <- paste(labels, pct) # add percents to labels se quita porque son las mismas
lbls2 <- paste(lbls2,"%",sep="") # ad % to labels


#Solo porcentaje en las etiquetas
pct<- round(BC/sum(BC)*100)
lbls <- pct
lbls <- paste(lbls,"%",sep="") # ad % to labels

pct2<- round(Pue/sum(Pue)*100)
lbls2 <- pct2
lbls2 <- paste(lbls2,"%",sep="") # ad % to labels




par(mfrow=c(1,2), oma = c(0, 0, 2, 0) ) # 1 row and 2 columns for plots

pie( BC,labels = lbls, col=c("blue", "gray"))

pie( Pue, labels = lbls2,  col=c("blue", "gray"))


mtext(text="Porcentaje de Participación\n Elecciones en México 2019",  cex = 1.5, outer = TRUE)

mtext(side=3, text="sabaconsultores.com ", line = -30, outer = TRUE, font=2)







text(line2user(line=mean(par('mar')[c(1, 1)]), side=2), 
     line2user(line=2, side=3), 'First title', xpd=NA, cex=2, font=2)



main=("PORCENTAJES DE PARTICIAPACIÓN\n Elecciones en México 2019")

mtext(side=2, text="Porcentaje de Participación\n Elecciones en México 2019")









library(ggplot2)
BCdf = data.frame(c(29.6760, 70.324), category=c("votó", "no votó"))
Puedf = data.frame(c(33.084, 66.916), category=c("votó", "no votó"))

p <- ggplot(data=mtcars, aes(x=factor(1), stat="bin", fill=cyl)) + geom_bar(position="fill") # Stacked bar chart
p <- p + ggtitle("Cylinders by Gears") + xlab("") + ylab("Gears") # Adds titles
p <- p + facet_grid(facets=. ~ gear) # Side by side bar chart
p <- p + coord_polar(theta="y") # side by side pie chart
p
