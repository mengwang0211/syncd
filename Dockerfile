FROM golang:1.12-alpine
WORKDIR /app
COPY . /app/
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
EXPOSE 8878
CMD ["bash", "/app/install.sh"]

