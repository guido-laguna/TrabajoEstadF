library(rio)
library(htmltab)
library(stringr)
linkEst="https://github.com/guido-laguna/TrabajoEstadF/raw/master/reporte%20(2).xlsx"
DataEst2=import(linkEst)
View(DataEst2)
names(DataEst2)
str(DataEst2)
DataEst2$Analfabetismo=as.numeric(DataEst2$Analfabetismo) 
str(DataEst2)
DataEst2$Analfabetismo=round(DataEst2$Analfabetismo,4)
head(DataEst2)
DataEst2$Departamento=str_split(DataEst2$Departamento,
                          pattern = 'Departamento: ',
                          simplify = T)[,2]
head(DataEst2)
DataEst2$Departamento[7]="Callao"
head(DataEst2)
names(DataEst2)[names(DataEst2)=="Analfabetismo"]="Porcentaje de Analfabetismo"
names(DataEst2)
