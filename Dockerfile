FROM ubuntu

ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update
RUN echo v1.0 >> /etc/version \
	&& apt install -y git iputils-ping tzdata apache2 vim



RUN service apache2 start
CMD ["/bin/bash"]
EXPOSE 80 443

VOLUME [ "/var/www/html" ]


