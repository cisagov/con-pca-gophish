FROM gophish/gophish:latest

USER root

COPY ./etc/gophish/config.json .

COPY ./etc/gophish/entrypoint.sh .

RUN chmod 755 entrypoint.sh
RUN chmod 777 config.json

USER app

ENTRYPOINT ["./entrypoint.sh"]
