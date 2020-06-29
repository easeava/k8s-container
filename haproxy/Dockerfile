FROM haproxy:2.1.7
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
COPY haproxy.cfg /usr/local/etc/haproxy/

# ENV MasterIP1=10.10.2.8
# ENV MasterIP2=10.10.2.9
# ENV MasterIP3=10.10.2.10
# ENV MasterPort=6443

# RUN apt update && apt install gettext -y

# COPY haproxy.template /usr/local/etc/haproxy/haproxy.template
# RUN envsubst '$MasterIP1 $MasterIP2 $MasterIP3 $MasterPort' < /usr/local/etc/haproxy/haproxy.template > /usr/local/etc/haproxy/haproxy.cfg
