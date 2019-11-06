FROM rhscl/redis-32-rhel7:latest



COPY run.sh ${REDIS_PREFIX}/bin/run.sh

USER root

RUN yum install hostname -y

RUN chmod 777 /etc/redis.conf

USER 1001

CMD [ "run.sh" ]
