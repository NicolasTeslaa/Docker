FROM openjdk
# o comando from serve de base para a criação do nosso container image
#  sendo a primeira instrução da nossa dockerfile

COPY exemplo.txt /app/exemplo.txt
# o comando COPY copia o arquivo dentro de algum diretório que ainda iremos definir 
# dentro do nosso container

ADD  aula.tar.gz /app/exemplos
# esse comando faz o download de um arquivo remoto dentro do nosso diretório
# ou pode tambem descompactar um arquivo dentro do nosso diretório

RUN apt-get update && apt-get install ...
# executa algum comando que fazemos 

CMD ["/app"]
# só executa quando o container ja estiver sendo executado
# pode ser um processo que executa dentro do container
# aceita arrays e strings tambem

ENTRYPOINT ["ls"]
# o CMD pode entrar como um parametro do entrypoint

WORKDIR /app/
# esse parametro é uma escolha de diretório onde o nosso container vai estar
# define um diretório raiz para nosso container

ENV MINHA_APLICACAO=app.jar
# faz a criação de uma variável de ambiente
# este comando em especifico que identifica o app.jar como o nome da aplicação

EXPOSE 8080
# expoe alguma porta dentro do container quando ele for iniciado para que possamos usa-la
