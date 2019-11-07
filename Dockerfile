FROM rhscl/redis-32-rhel7:latest
RUN export REDIS_PREFIX=backend && export REDIS_NAME=${REDIS_PREFIX}-redis
COPY run.sh ${REDIS_PREFIX}/bin/run.sh
USER root

RUN yum install hostname -y

RUN mkdir -p /etc/redis && sudo chown -R 1001:1001 /etc/redis 

USER 1001

CMD [ "run.sh" ]
