#Importando o banco de dados do computador
dados<-read.table("C:/Users/Stephanie/Downloads/R/R/antropo.txt",header=T)

####Exerc�cio 1
#Adicionando uma coluna de dados do peso em Kg(o nome da variavel ser� weightkg)
dados$weightkg <- dados$Weight*0.45359237

####Exerc�cio 2
#Adicionando uma coluna de dados da altura em cm(o nome da variavel ser� heightcm)
dados$heightcm <- dados$Height*2.54

####Exerc�cio 3
#Plotando um boxplot para cada v�riavel cont�nua do banco de dados
boxplot(dados$Density,main="Densidade",ylab="g/cm^3",las=2)
boxplot(dados$Fat,main="Percentual de gordura",ylab="%",las=2)
boxplot(dados$Age,main="Idade",ylab="anos",las=2)
boxplot(dados$Weight,main="Peso",ylab="Libras",las=2)
boxplot(dados$Height,main="Altura",ylab="Polegadas",las=2)
boxplot(dados$Neck,main="Circunfer�ncia do Pesco�o",ylab="cm",las=2)
boxplot(dados$Chest,main="Circunfer�ncia do Peito",ylab="cm",las=2)
boxplot(dados$Abdomen,main="Circunfer�ncia do Abdomen",ylab="cm",las=2)
boxplot(dados$Hip,main="Circunfer�ncia do Quadril",ylab="cm",las=2)
boxplot(dados$Thigh,main="Circunfer�ncia da Coxa",ylab="cm",las=2)
boxplot(dados$Knee,main="Circunfer�ncia do Joelho",ylab="cm",las=2)
boxplot(dados$Ankle,main="Circunfer�ncia do Tornozelo",ylab="cm",las=2)
boxplot(dados$Biceps,main="Circunfer�ncia do B�ceps",ylab="cm",las=2)
boxplot(dados$Forearm,main="Circunfer�ncia do Antebra�o",ylab="cm",las=2)
boxplot(dados$Wrist,main="Circunfer�ncia do Pulso",ylab="cm",las=2)
boxplot(dados$weightkg,main="Peso (kg)",ylab="Kg",las=2)
boxplot(dados$heightcm,main="Altura (cm)",ylab="cm",las=2)

####Exerc�cio 4
#Construindo o gr�fico de dispers�o entre o peso e a altura das pessoas
plot(dados$weightkg,dados$heightcm,ylab="Altura (cm)",xlab="Peso (Kg)",main = "Altura em fun��o do peso")

####Exerc�cio 5
#Construindo histogramas para a idade, peso e a altura das pessoas
hist(dados$Age, main="Histograma das Idades", xlab="Idade (anos)",ylab="Frequ�ncia",  ylim = c(0,60),xlim = c(0,100))
hist(dados$weightkg, main="Histograma dos Pesos", xlab="Peso (kg)",ylab="Frequ�ncia",  ylim = c(0,100),xlim = c(30,200))
hist(dados$heightcm,main="Histograma das alturas",xlab="altura(cm)",ylab="Frequ�ncia",  ylim = c(0,150),xlim = c(50,220))


####Exerc�cio 6
#Calculando os gr�ficos de dispers�o do percentual de gordura gordura m fun��o das outras vari�veis antropom�tricas
plot(dados$Fat,dados$Density,xlab="Percentual de gordura (%)",ylab="Densidade (g/cm�)",main = "Densidade")
plot(dados$Fat,dados$Age,xlab="Percentual de gordura (%)",ylab="Idade (Anos)",main = "Idade")
plot(dados$Fat,dados$Weight,xlab="Percentual de gordura (%)",ylab="Peso (lb)",main = "Peso")
plot(dados$Fat,dados$Height,xlab="Percentual de gordura (%)",ylab="Altura (in))",main = "Altura")
plot(dados$Fat,dados$Neck,xlab="Percentual de gordura (%)",ylab="Circunfer�ncia do Pescoco (cm)",main = "Circunferencia do Pesco�o")
plot(dados$Fat,dados$Chest,xlab="Percentual de gordura (%)",ylab="Circunfer�ncia do Peito (cm)",main = "Circunferencia do Peito")
plot(dados$Fat,dados$Abdomen,xlab="Percentual de gordura (%)",ylab="Circunfer�ncia do Abdomen (cm)",main = "Circunferencia do Abd�men")
plot(dados$Fat,dados$Hip,xlab="Percentual de gordura (%)",ylab="Circunfer�ncia do Quadril (cm)",main = "Circunferencia do Quadril")
plot(dados$Fat,dados$Thigh,xlab="Percentual de gordura (%)",ylab="Circunfer�ncia da Coxa (cm)",main = "Circunferencia da Coxa ")
plot(dados$Fat,dados$Knee,xlab="Percentual de gordura (%)",ylab="Circunfer�ncia do Joelho (cm)",main = "Circunferencia do Joelho")
plot(dados$Fat,dados$Ankle,xlab="Percentual de gordura (%)",ylab="Circunfer�ncia do Tornozelo (cm)",main = "Circunfer�ncia do Tornozelo")
plot(dados$Fat,dados$Biceps,xlab="Percentual de gordura (%)",ylab="Circunfer�ncia do B�ceps (cm)",main = "Circunfer�ncia do B�ceps")
plot(dados$Fat,dados$Forearm,xlab="Percentual de gordura (%)",ylab="Circunfer�ncia do Antebra�o (cm)",main = "Circunfer�ncia do Antebra�o")
plot(dados$Fat,dados$Wrist,xlab="Percentual de gordura (%)",ylab="Circunfer�ncia do Pulso (cm)",main = "Circunfer�ncia do Pulso (cm)")
plot(dados$Fat,dados$weightkg,xlab="Percentual de gordura (%)",ylab="Peso (kg)",main = "Peso (kg)")
plot(dados$Fat,dados$heightcm,xlab="Percentual de gordura (%)",ylab="Altura (cm)",main = "Altura (cm)")

####Exerc�cio 7
#C�lculo dos coeficientes de correla��o de Pearson do percentual de gordura em fun��o das outras vari�veis antropom�tricas
cor.test(dados$Fat,dados$Density,method = c("pearson"))
cor.test(dados$Fat,dados$Age,method = c("pearson"))
cor.test(dados$Fat,dados$Weight,method = c("pearson"))
cor.test(dados$Fat,dados$Height,method = c("pearson"))
cor.test(dados$Fat,dados$Neck,method = c("pearson"))
cor.test(dados$Fat,dados$Chest,method = c("pearson"))
cor.test(dados$Fat,dados$Abdomen,method = c("pearson"))
cor.test(dados$Fat,dados$Hip,method = c("pearson"))
cor.test(dados$Fat,dados$Thigh,method = c("pearson"))
cor.test(dados$Fat,dados$Knee,method = c("pearson"))
cor.test(dados$Fat,dados$Ankle,method = c("pearson"))
cor.test(dados$Fat,dados$Biceps,method = c("pearson"))
cor.test(dados$Fat,dados$Forearm,method = c("pearson"))
cor.test(dados$Fat,dados$Wrist,method = c("pearson"))
cor.test(dados$Fat,dados$weightkg,method = c("pearson"))
cor.test(dados$Fat,dados$heightcm,method = c("pearson"))


####Exerc�cio 8
plot(dados$Age,dados$Abdomen,xlab="Idade (Anos)",ylab="Circunfer�ncia do Abdomem (cm)",main = "Circunfer�ncia do Abdomem")
cor.test(dados$Abdomen,dados$Age,method = c("pearson"))


