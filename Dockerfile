FROM alpine

COPY ktadm-linux-amd64 /wwwroot/ktadm
COPY conf/database.example.yml /wwwroot/conf/database.yml
RUN chmod -R 755 /wwwroot
WORKDIR /wwwroot
VOLUME /wwwroot/conf
EXPOSE 8080
ENTRYPOINT ["/wwwroot/ktadm"]