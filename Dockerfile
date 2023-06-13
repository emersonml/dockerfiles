
FROM emersonml/ror
LABEL maintainer="Emerson Marques"

ENV INSTALL_PATH /usr/src/

RUN /bin/bash -l -c "gem install rails -v 6.1.6"

# RUN apt-get install -y git-all #### isso nao existe o GIT FICA NA PASTA HOPEDEIRA

EXPOSE 22
EXPOSE 3000

RUN mkdir -p $INSTALL_PATH

VOLUME /usr/src/

WORKDIR $INSTALL_PATH

COPY . $INSTALL_PATH


# docker image build -t my_proj_webcoruja .