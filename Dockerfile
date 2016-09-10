FROM index.alauda.cn/waxiangzi/alpine-ruby

WORKDIR /

ADD ./prog1 /
ADD ./startup.sh /
RUN chmod +x /startup.sh && chmod +x /prog1

CMD /bin/sh -c /startup.sh
