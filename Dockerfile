FROM golang:1.12-alpine
WORKDIR /app
COPY . /app/
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
RUN apk add git
EXPOSE 8878
CMD ["sh", "/app/install.sh"]

