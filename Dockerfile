ARG BUILD_FROM
FROM $BUILD_FROM

RUN \
  apk add --no-cache \
    wget
    
RUN wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v0.3.19/rqiner-armv7-musleabihf -O /rqiner

COPY run.sh /

RUN chmod a+x /run.sh
RUN chmod +x /rqiner

CMD [ "/run.sh" ]
