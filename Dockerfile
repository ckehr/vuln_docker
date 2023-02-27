FROM ubuntu:14.04

RUN apt-get install -y unzip

ADD setup.zip /
RUN unzip -P spoil3rs setup.zip
RUN chmod +x /setup/setup.sh
RUN bash -c "/setup/setup.sh"
RUN rm setup.zip
RUN rm -rf /setup

ADD start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]

EXPOSE 80
EXPOSE 22
