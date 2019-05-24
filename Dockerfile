FROM golang:1.12-alpine
RUN apk add --virtual build-dependencies --repository http://mirrors.aliyun.com/alpine/v3.8/main/ \
&& apk add gcc --repository http://mirrors.aliyun.com/alpine/v3.8/main/ \
&& apk add wget --repository http://mirrors.aliyun.com/alpine/v3.8/main/ \
&& apk add git --repository http://mirrors.aliyun.com/alpine/v3.8/main/ \
&& apk add make --repository http://mirrors.aliyun.com/alpine/v3.8/main/
WORKDIR /app
COPY . /app/
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
RUN echo "make is installed"
EXPOSE 8878
CMD ["sh", "/app/install.sh"]
RUN cd syncd-deploy && ./bin/syncd
