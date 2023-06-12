

FROM emersonml/ror
LABEL maintainer="Emerson Marques"

RUN apt-get update

RUN mkdir /home/app

WORKDIR /home/app


RUN useradd -ms /bin/bash app
RUN adduser app sudo
RUN echo 'app:app' |chpasswd


USER root


EXPOSE 22
EXPOSE 3000

VOLUME /home/app

# CMD ["rails", "server", "-b", "0.0.0.0"]



# Add a script to be executed every time the container starts.
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]

# Configure the main process to run when running the image
# CMD ["rails", "server", "-b", "0.0.0.0"]