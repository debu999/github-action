FROM docker:stable

COPY entrypoint.sh /entrypoint.sh
COPY docker-compose-cluster.yml /docker-compose-cluster.yml
COPY docker-compose-single.yml /docker-compose-single.yml

RUN chmod +x /entrypoint.sh
WORKDIR /
RUN ls -lart

ENTRYPOINT ["/entrypoint.sh"]
