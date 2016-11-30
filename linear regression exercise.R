

ggplot(states.data, aes(x=energy, y=metro))+
    geom_point()
 
model1=lm(energy ~ metro, data=states.data)
summary(model1)

plot(model1)



ggplot(states.data, aes(x=energy, y=green))+
  geom_point()

model2=lm(energy ~ metro + green, data=states.data)
summary(model2)

plot(model2)

model3=lm(energy ~ metro*green, data=states.data)
summary(model3)

plot(model3)


str(states.data$region)
states.data$region<-factor(states.data$region)

model4=lm(energy ~ region, data=states.data)
summary(model4)

model5=lm(energy ~ metro*green + region, data=states.data)
summary(model5)