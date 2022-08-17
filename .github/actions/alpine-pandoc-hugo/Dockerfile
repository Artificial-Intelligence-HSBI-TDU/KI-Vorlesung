FROM pandoc/latex:2.19.0

COPY install-packages.sh /root/install-packages.sh
RUN /root/install-packages.sh && rm -rf /root/install-packages.sh

ENTRYPOINT ["sh", "-c"]
