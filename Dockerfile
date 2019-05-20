FROM shvid/ubuntu-golang
WORKDIR /app
COPY . /app/
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
RUN apt-get install ubuntu-make -y yes
EXPOSE 8878
CMD ["sh", "/app/install.sh"]

