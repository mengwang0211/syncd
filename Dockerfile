FROM shvid/ubuntu-golang
WORKDIR /app
COPY . /app/
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
RUN apt-get update && apt-get install ubuntu-make -y yes
RUN echo "make is installed"
EXPOSE 8878
CMD ["sh", "/app/install.sh"]
RUN cd syncd-deploy && ./bin/syncd
