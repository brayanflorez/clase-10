#===========================================#
# author: Eduard Fernando Martínez González
# update: 09-04-2024
# R version 4.3.3 (2024-02-29)
#===========================================#

## initial configuration
rm(list=ls()) # limpiar entorno

## load packages
require(pacman)

## usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(tidyverse, # funciones para manipular/limpiar conjuntos de datos.
       rio, # función import/export: permite leer/escribir archivos desde diferentes formatos. 
       skimr, # función skim: describe un conjunto de datos
       janitor,
       data.table
       # función tabyl: frecuencias relativas
)

##=== Lopps: for ===##

##loop base
print("Hola")
paste("Hola","mundo")
for (iterar in 1:10) {
  print(paste("Hola","mundo", iterar))
}

##iterar sobre columnas

ncol(mtcars)
for(i in 1:ncol(mtcars)){
  print(mean(mtcars[,i]))
}

db <- as.data.table(mtcars)
for(i in 1:ncol(db)){
  db[[i]] <- db[[i]]/1000
}
view(db)

##Condicionales
letras <- letters 
vocales <- c("a", "e", "i", "o", "u")

for (j in letras ){
  if(j %in% vocales) {
    print(paste(j, "es una vocal"))
  }
  else {
    print(paste(j, "no es una vocalcita"))
  }
}

##3iterae eddel 1 al 20 e imprima cuando es un par o un impar 

##Funciones 

##
sqrt_new <- function(numero){
  if(is.na(as.numeric(numero))) {
    print(paste(numero, " NO es un número"))
  }
  else{
    resultado <- sqrt(as.numeric(numero))
    return(resultado)
  }
  
}

sqrt_new ("100")
sqrt_new("100A")

##Loop sobre la función

n <- c("100", "200", "Hola")

for(i in n){
  print(sqrt_new(i))
}

##laaply: aplicar promedios a columnas 
lapply(mtcars, mean)

##lapply: aplicar procesamiento a columnas
db <- lapply (mtcars, function(x) x=x/1000)


#FUNCTION FAST
hola <- import("input/chip/2019/11767600044K212410-1220191625694914330.xls")

###function
chip <- function(file){
  db <- ipmort (file)
  output <- data.frame("name_muni"= names (db) [1], "valor"=db [8,8])
  
}

#archivos 
rutas <- 








