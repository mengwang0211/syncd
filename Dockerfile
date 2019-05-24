FROM golang:1.11-stretch
#RUN apk add --virtual build-dependencies --repository http://mirrors.aliyun.com/alpine/v3.9/main/ \
#&& apk add gcc --repository http://mirrors.aliyun.com/alpine/v3.9/main/ \
#&& apk add wget --repository http://mirrors.aliyun.com/alpine/v3.9/main/ \
#&& apk add git --repository http://mirrors.aliyun.com/alpine/v3.9/main/ \
#&& apk add make --repository http://mirrors.aliyun.com/alpine/v3.9/main/
RUN apt-get update && apt-get install curl && apt-get install gcc  && apt-get install git
WORKDIR /app
COPY . /app/
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
RUN echo "make is installed"
EXPOSE 8878
RUN curl https://syncd.cc/install.sh | bash
