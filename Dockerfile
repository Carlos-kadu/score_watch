# Use uma imagem de Python como base
FROM python:3.10.6

# Defina a variável de ambiente para não interromper a execução para entrada do usuário
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Defina o diretório de trabalho dentro do container
WORKDIR /app

# Copie o arquivo requirements.txt para o diretório de trabalho do container
COPY requirements.txt /app/

# Instale as dependências do projeto
RUN pip install -r requirements.txt

# Copie todo o código do projeto para o diretório de trabalho do container
COPY . /app/
