FROM rhscl/redis-32-rhel7:latest

COPY run.sh ${REDIS_PREFIX}/bin/run.sh
USER root

RUN yum install hostname -y

RUN mkdir -p /etc/redis && chown -R 1001:1001 /etc/redis 

USER 1001

CMD [ "run.sh" ]
