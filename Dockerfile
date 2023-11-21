FROM devisty/xssh:v2
EXPOSE 80

RUN apt update
RUN apt install -y neofetch

COPY . /app
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]
