install.packages("ggparliament")
install.packages("ggplot")
install.packages("ggplot2")

library(ggplot2)
library(ggparliament)

#El parlamento de la felicidad
feliz <- c(87.6, 9.3, 2.2, 0.9)
names(feliz) <- c("Si", "No", "No sabe", "No contestó")  



QR <- c(1, 3, 11)
PQR= c("PRI", "PAN-PRD-PES", "MORENA-PVEM-PT")
names(QR) <-PQR



#Quintana Roo
diputados <- data.frame(
  Partido = c("PRI", "PAN-PRD-PES", "MORENA-PVEM-PT"),
  seats = c(1, 3, 11),
  color = c("darkgreen", "blue", "brown4")
) 

diputados <- diputados %>% 
  mutate(Partido = as.character(Partido), color = as.character(color)) %>%
  parliament_data(election_data = .,
                  parl_rows = 2,
                  party_seats = .$seats,
                  type = 'semicircle')
ggplot(data = diputados) +
  geom_parliament_seats(aes(x = x,  y = y, color = Partido)) +
  theme_ggparliament() +
  scale_color_manual(values = diputados$color, 
                     limits = diputados$Partido)





#Tamaulipas
diputados <- data.frame(
  Partido = c( "PAN", "MORENA"),
  seats = c(21,1),
  color = c( "blue", "brown4")
) 

diputados <- diputados %>% 
  mutate(Partido = as.character(Partido), color = as.character(color)) %>%
  parliament_data(election_data = .,
                  parl_rows = 2,
                  party_seats = .$seats,
                 # style = "dots",
                #  size = 10, 
                  type = 'semicircle')
                
ggplot(data = diputados) +
  geom_parliament_seats(aes(x = x,  y = y, color = Partido)) +
  theme_ggparliament() +
  scale_color_manual(values = diputados$color, 
                     limits = diputados$Partido)



#Baja California
diputados <- data.frame(
  Partido = "MORENA-PVEM-\nPT-TRANSFORMEMOS",
  seats = 17,
  color = "brown4")
) 

diputados <- diputados %>% 
  mutate(Partido = as.character(Partido), color = as.character(color)) %>%
  parliament_data(election_data = .,
                  parl_rows = 2,
                  party_seats = .$seats,
                  type = 'semicircle')
ggplot(data = diputados) +
  geom_parliament_seats(aes(x = x,  y = y, color = Partido)) +
  theme_ggparliament() +
  scale_color_manual(values = diputados$color, 
                     limits = diputados$Partido)
