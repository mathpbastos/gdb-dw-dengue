# Todos os comandos nesse arquivo são para configuração da imagem, será lido apenas no compose;

# Imagem utilizda
FROM mysql:latest

# Exexuta o comando dentro do cntr
RUN chown -R mysql:root /var/lib/mysql

# Variáveis de build
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

# Variáveis de ambiente
ENV MYSQL_DATABASE=$MYSQL_DATABASE
ENV MYSQL_USER=$MYSQL_USER
ENV MYSQL_PASSWORD=$MYSQL_PASSWORD
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD

# Insere um arquivo dentro do cntr
ADD ddl.sql /etc/mysql/ddl.sql

RUN sed -i 's/MYSQL_DATABASE/'$MYSQL_DATABASE'/g' /etc/mysql/ddl.sql
# Copia o arquivo para o entrypoint do cntr, assim o script será executado na inicialização.
RUN cp /etc/mysql/ddl.sql /docker-entrypoint-initdb.d/

# Expõe o serviço na porta 9906
EXPOSE 9906