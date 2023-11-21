##Usando a imagem base do python na versão 3.10.13-alpine-18
FROM python:3.10.13-alpine3.18 

LABEL maintainer = 'pietroreame'

## Definindo um diretorio de trabalho chamado '/app'
WORKDIR /app

##Copiadno arquivo "requirements.txt" para o conteiner no diretório '/app'
COPY requirements.txt .

##Instalando dependencias
RUN pip install --no-cache-dir -r requirements.txt

##Copiando restante da aplicacao para o conteiner
COPY . .

#Expondo a porta 5000 do conteiner 
EXPOSE 5000

#Executar a aplicacao quando o conteiner for criado
CMD [ "python", "app.py" ]

## docker build -t api-flask:0.1 .




