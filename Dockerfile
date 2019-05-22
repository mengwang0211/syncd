FROM bigrocs/golang-gcc:1.12-alpine
WORKDIR /app
COPY . /app/
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
RUN echo "make is installed"
EXPOSE 8878
CMD ["sh", "/app/install.sh"]
RUN cd syncd-deploy && ./bin/syncd
